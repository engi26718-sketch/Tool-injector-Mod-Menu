.class public Lcom/android/support/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static final DEFAULT_BOOLEAN_VALUE:Z = false

.field private static final DEFAULT_DOUBLE_VALUE:D = 0.0

.field private static final DEFAULT_FLOAT_VALUE:F = 0.0f

.field private static final DEFAULT_INT_VALUE:I = 0x0

.field private static final DEFAULT_LONG_VALUE:J = 0x0L

.field private static final DEFAULT_STRING_VALUE:Ljava/lang/String; = ""

.field private static final LENGTH:Ljava/lang/String; = "_length"

.field public static context:Landroid/content/Context;

.field public static isExpanded:Z

.field public static loadPref:Z

.field private static prefsInstance:Lcom/android/support/Preferences;

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 95
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferencesName"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 102
    return-void
.end method

.method public static native Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V
.end method

.method public static changeFeatureBool(Ljava/lang/String;IZ)V
    .locals 9
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "featureNum"    # I
    .param p2, "bool"    # Z

    .line 43
    sget-object v0, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/support/Preferences;->writeBoolean(IZ)V

    .line 44
    sget-object v1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    move v2, p1

    move v7, p2

    .end local p0    # "featureName":Ljava/lang/String;
    .end local p1    # "featureNum":I
    .end local p2    # "bool":Z
    .local v2, "featureNum":I
    .local v3, "featureName":Ljava/lang/String;
    .local v7, "bool":Z
    invoke-static/range {v1 .. v8}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    .line 45
    return-void
.end method

.method public static changeFeatureInt(Ljava/lang/String;II)V
    .locals 9
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "featureNum"    # I
    .param p2, "value"    # I

    .line 28
    sget-object v0, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/support/Preferences;->writeInt(II)V

    .line 29
    sget-object v1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v3, p0

    move v2, p1

    move v4, p2

    .end local p0    # "featureName":Ljava/lang/String;
    .end local p1    # "featureNum":I
    .end local p2    # "value":I
    .local v2, "featureNum":I
    .local v3, "featureName":Ljava/lang/String;
    .local v4, "value":I
    invoke-static/range {v1 .. v8}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    .line 30
    return-void
.end method

.method public static changeFeatureLong(Ljava/lang/String;IJ)V
    .locals 10
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "featureNum"    # I
    .param p2, "Lvalue"    # J

    .line 33
    sget-object v0, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/support/Preferences;->writeLong(Ljava/lang/String;J)V

    .line 34
    sget-object v2, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    move v3, p1

    move-wide v6, p2

    .end local p0    # "featureName":Ljava/lang/String;
    .end local p1    # "featureNum":I
    .end local p2    # "Lvalue":J
    .local v3, "featureNum":I
    .local v4, "featureName":Ljava/lang/String;
    .local v6, "Lvalue":J
    invoke-static/range {v2 .. v9}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    .line 35
    return-void
.end method

.method public static changeFeatureString(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "featureNum"    # I
    .param p2, "inputString"    # Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/support/Preferences;->writeString(ILjava/lang/String;)V

    .line 39
    sget-object v1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    move v2, p1

    move-object v8, p2

    .end local p0    # "featureName":Ljava/lang/String;
    .end local p1    # "featureNum":I
    .end local p2    # "inputString":Ljava/lang/String;
    .local v2, "featureNum":I
    .local v3, "featureName":Ljava/lang/String;
    .local v8, "inputString":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    .line 40
    return-void
.end method

.method public static loadPrefBool(Ljava/lang/String;IZ)Z
    .locals 9
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "featureNum"    # I
    .param p2, "bDef"    # Z

    .line 66
    sget-object v0, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/support/Preferences;->readBoolean(IZ)Z

    move-result v0

    .line 67
    .local v0, "bool":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 68
    sput-boolean v0, Lcom/android/support/Preferences;->loadPref:Z

    .line 70
    :cond_0
    const/4 v1, -0x3

    if-ne p1, v1, :cond_1

    .line 71
    sput-boolean v0, Lcom/android/support/Preferences;->isExpanded:Z

    .line 73
    :cond_1
    sget-boolean v1, Lcom/android/support/Preferences;->loadPref:Z

    if-nez v1, :cond_3

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    move v7, p2

    goto :goto_1

    .line 74
    :cond_3
    :goto_0
    move p2, v0

    move v7, p2

    .line 77
    .end local p2    # "bDef":Z
    .local v7, "bDef":Z
    :goto_1
    sget-object v1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    move v2, p1

    .end local p0    # "featureName":Ljava/lang/String;
    .end local p1    # "featureNum":I
    .local v2, "featureNum":I
    .local v3, "featureName":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    .line 78
    return v7
.end method

.method public static loadPrefInt(Ljava/lang/String;I)I
    .locals 9
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "featureNum"    # I

    .line 48
    sget-boolean v0, Lcom/android/support/Preferences;->loadPref:Z

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/support/Preferences;->readInt(I)I

    move-result v4

    .line 50
    .local v4, "value":I
    sget-object v1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v3, p0

    move v2, p1

    .end local p0    # "featureName":Ljava/lang/String;
    .end local p1    # "featureNum":I
    .local v2, "featureNum":I
    .local v3, "featureName":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    .line 51
    return v4

    .line 53
    .end local v2    # "featureNum":I
    .end local v3    # "featureName":Ljava/lang/String;
    .end local v4    # "value":I
    .restart local p0    # "featureName":Ljava/lang/String;
    .restart local p1    # "featureNum":I
    :cond_0
    move-object v3, p0

    .end local p0    # "featureName":Ljava/lang/String;
    .restart local v3    # "featureName":Ljava/lang/String;
    const/4 p0, 0x0

    return p0
.end method

.method public static loadPrefLong(Ljava/lang/String;I)J
    .locals 10
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "featureNum"    # I

    .line 57
    sget-boolean v0, Lcom/android/support/Preferences;->loadPref:Z

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/support/Preferences;->readLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 59
    .local v6, "Lvalue":J
    sget-object v2, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    move v3, p1

    .end local p0    # "featureName":Ljava/lang/String;
    .end local p1    # "featureNum":I
    .local v3, "featureNum":I
    .local v4, "featureName":Ljava/lang/String;
    invoke-static/range {v2 .. v9}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    .line 60
    return-wide v6

    .line 62
    .end local v3    # "featureNum":I
    .end local v4    # "featureName":Ljava/lang/String;
    .end local v6    # "Lvalue":J
    .restart local p0    # "featureName":Ljava/lang/String;
    .restart local p1    # "featureNum":I
    :cond_0
    move-object v4, p0

    .end local p0    # "featureName":Ljava/lang/String;
    .restart local v4    # "featureName":Ljava/lang/String;
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static loadPrefString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "featureNum"    # I

    .line 82
    sget-boolean v0, Lcom/android/support/Preferences;->loadPref:Z

    if-nez v0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    const-string v0, ""

    return-object v0

    .line 83
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/support/Preferences;->readString(I)Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "text":Ljava/lang/String;
    sget-object v1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    move v2, p1

    .end local p0    # "featureName":Ljava/lang/String;
    .end local p1    # "featureNum":I
    .local v2, "featureNum":I
    .local v3, "featureName":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IJZLjava/lang/String;)V

    .line 85
    return-object v8
.end method

.method public static with(Landroid/content/Context;)Lcom/android/support/Preferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    sget-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/android/support/Preferences;

    invoke-direct {v0, p0}, Lcom/android/support/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    .line 112
    :cond_0
    sget-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    return-object v0
.end method

.method public static with(Landroid/content/Context;Ljava/lang/String;)Lcom/android/support/Preferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferencesName"    # Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/android/support/Preferences;

    invoke-direct {v0, p0, p1}, Lcom/android/support/Preferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    .line 136
    :cond_0
    sget-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    return-object v0
.end method

.method public static with(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/support/Preferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferencesName"    # Ljava/lang/String;
    .param p2, "forceInstantiation"    # Z

    .line 147
    if-eqz p2, :cond_0

    .line 148
    new-instance v0, Lcom/android/support/Preferences;

    invoke-direct {v0, p0, p1}, Lcom/android/support/Preferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    .line 150
    :cond_0
    sget-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    return-object v0
.end method

.method public static with(Landroid/content/Context;Z)Lcom/android/support/Preferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceInstantiation"    # Z

    .line 121
    if-eqz p1, :cond_0

    .line 122
    new-instance v0, Lcom/android/support/Preferences;

    invoke-direct {v0, p0}, Lcom/android/support/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    .line 124
    :cond_0
    sget-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 496
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 497
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 489
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getOrderedStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 452
    .local p2, "defValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_length"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/support/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 454
    .local v0, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/support/Preferences;->readInt(Ljava/lang/String;)I

    move-result v1

    .line 455
    .local v1, "stringSetLength":I
    if-ltz v1, :cond_0

    .line 456
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/support/Preferences;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    .end local v2    # "i":I
    :cond_0
    return-object v0

    .line 462
    .end local v0    # "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local v1    # "stringSetLength":I
    :cond_1
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 438
    .local p2, "defValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 439
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putOrderedStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 414
    .local p2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 415
    .local v0, "stringSetLength":I
    sget-object v1, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/support/Preferences;->readInt(Ljava/lang/String;)I

    move-result v0

    .line 419
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/support/Preferences;->writeInt(Ljava/lang/String;I)V

    .line 420
    const/4 v1, 0x0

    .line 421
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "]"

    const-string v5, "["

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 422
    .local v3, "aValue":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/support/Preferences;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    nop

    .end local v3    # "aValue":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 424
    goto :goto_0

    .line 425
    :cond_1
    :goto_1
    if-ge v1, v0, :cond_2

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/support/Preferences;->remove(Ljava/lang/String;)V

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 429
    :cond_2
    return-void
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 401
    .local p2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 402
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 407
    return-void
.end method

.method public readBoolean(I)Z
    .locals 3
    .param p1, "what"    # I

    .line 348
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public readBoolean(IZ)Z
    .locals 2
    .param p1, "what"    # I
    .param p2, "defaultBoolean"    # Z

    .line 371
    :try_start_0
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "ex":Ljava/lang/ClassCastException;
    return p2
.end method

.method public readBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 340
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultBoolean"    # Z

    .line 359
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public readDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/support/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const-wide/16 v0, 0x0

    return-wide v0

    .line 257
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/support/Preferences;->readLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultDouble"    # D

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/support/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    return-wide p2

    .line 268
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/support/Preferences;->readLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 286
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public readFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultFloat"    # F

    .line 295
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public readInt(I)I
    .locals 3
    .param p1, "what"    # I

    .line 217
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public readInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 207
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultInt"    # I

    .line 229
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public readLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "what"    # Ljava/lang/String;

    .line 313
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultLong"    # J

    .line 322
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString(I)Ljava/lang/String;
    .locals 3
    .param p1, "what"    # I

    .line 169
    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "ex":Ljava/lang/ClassCastException;
    return-object v0
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultString"    # Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_length"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/support/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/support/Preferences;->readInt(Ljava/lang/String;)I

    move-result v0

    .line 474
    .local v0, "stringSetLength":I
    if-ltz v0, :cond_0

    .line 475
    sget-object v2, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 476
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 477
    sget-object v2, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "stringSetLength":I
    .end local v1    # "i":I
    :cond_0
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 482
    return-void
.end method

.method public writeBoolean(IZ)V
    .locals 2
    .param p1, "where"    # I
    .param p2, "what"    # Z

    .line 390
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 391
    return-void
.end method

.method public writeBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # Z

    .line 382
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 383
    return-void
.end method

.method public writeDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # D

    .line 276
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/support/Preferences;->writeLong(Ljava/lang/String;J)V

    .line 277
    return-void
.end method

.method public writeFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # F

    .line 303
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    return-void
.end method

.method public writeInt(II)V
    .locals 2
    .param p1, "where"    # I
    .param p2, "what"    # I

    .line 245
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 246
    return-void
.end method

.method public writeInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # I

    .line 237
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 238
    return-void
.end method

.method public writeLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # J

    .line 330
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 331
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 2
    .param p1, "where"    # I
    .param p2, "what"    # Ljava/lang/String;

    .line 197
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 198
    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    .line 189
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    return-void
.end method
