.class Lcom/android/support/DialogHelper$1;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/DialogHelper;->showDialogWithLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/android/support/DialogHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/support/DialogHelper$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 25
    iget-object v0, p0, Lcom/android/support/DialogHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/support/DialogHelper$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/support/DialogHelper;->openUrlSafely(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method
