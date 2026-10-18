#include <list>
#include <vector>
#include <cstring>
#include <pthread.h>
#include <thread>
#include <string>
#include <jni.h>
#include <unistd.h>
#include <fstream>
#include <iostream>
#include <dlfcn.h>
#include "Includes/Logger.h"
#include "Includes/obfuscate.h"
#include "Includes/Utils.hpp"
#include "Menu/Menu.hpp"
#include "Menu/Jni.hpp"
#include "Includes/Macros.h"

#define targetLibName OBFUSCATE("libil2cpp.so")

jobjectArray GetFeatureList(JNIEnv *env, jobject context) {
    jobjectArray ret;

    const char *features[] = {
            (const char *) OBFUSCATE("Category_Player Options"),
            (const char *) OBFUSCATE("100_Toggle_God Mode"),
            (const char *) OBFUSCATE("101_SeekBar_Speed Multiplier_1_10"),
            (const char *) OBFUSCATE("102_Button_Add 1000 Coins"),
            (const char *) OBFUSCATE("103_Toggle_Test")
    };

    int Total_Feature = (sizeof features / sizeof features[0]);
    ret = (jobjectArray)
            env->NewObjectArray(Total_Feature, env->FindClass(OBFUSCATE("java/lang/String")),
                                env->NewStringUTF(""));

    for (int i = 0; i < Total_Feature; i++)
        env->SetObjectArrayElement(ret, i, env->NewStringUTF(features[i]));

    return (ret);
}

void Changes(JNIEnv *env, jclass clazz, jobject obj, jint featNum, jstring featName, jint value, jlong Lvalue, jboolean boolean, jstring text) {
    switch (featNum) {
        case 100:
            LOGI((const char *) OBFUSCATE("God Mode set to: %d"), boolean);
            break;
        case 101:
            LOGI((const char *) OBFUSCATE("Speed Multiplier set to: %d"), value);
            break;
        case 102:
            LOGI((const char *) OBFUSCATE("Button pressed: Add 1000 Coins"));
            break;
        case 103:
            LOGI((const char *) OBFUSCATE("Test set to: %d"), boolean);
            break;
        default:
            break;
    }
}

void hack_thread() {
    while (!isLibraryLoaded(targetLibName)) {
        sleep(1);
    }
    LOGI((const char *) OBFUSCATE("Game library loaded successfully, initializing native bindings..."));
}

__attribute__((constructor))
void lib_main() {
    std::thread(hack_thread).detach();
}
