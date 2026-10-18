.class public Lcom/android/support/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MyLibName"
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native CheckOverlayPermission(Landroid/content/Context;)V
.end method

.method public static Start(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 31
    invoke-static {p0}, Lcom/android/support/CrashHandler;->init(Landroid/content/Context;)V

    .line 32
    invoke-static {p0}, Lcom/android/support/Main;->CheckOverlayPermission(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public static StartWithoutPermission(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 19
    invoke-static {p0}, Lcom/android/support/CrashHandler;->init(Landroid/content/Context;)V

    .line 20
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/android/support/Menu;

    invoke-direct {v0, p0}, Lcom/android/support/Menu;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, "menu":Lcom/android/support/Menu;
    invoke-virtual {v0}, Lcom/android/support/Menu;->SetWindowManagerActivity()V

    .line 24
    invoke-virtual {v0}, Lcom/android/support/Menu;->ShowMenu()V

    .line 25
    .end local v0    # "menu":Lcom/android/support/Menu;
    goto :goto_0

    .line 26
    :cond_0
    const-string v0, "MyLibName"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    :goto_0
    return-void
.end method
