.class Lcom/android/support/DialogHelper$3;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/DialogHelper;->startCountdown(Landroid/app/AlertDialog;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field remainingTime:I

.field final synthetic val$CloseBtnTitle:Ljava/lang/String;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$seconds:I


# direct methods
.method constructor <init>(ILandroid/app/AlertDialog;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    iput p1, p0, Lcom/android/support/DialogHelper$3;->val$seconds:I

    iput-object p2, p0, Lcom/android/support/DialogHelper$3;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/android/support/DialogHelper$3;->val$CloseBtnTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/support/DialogHelper$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iget p1, p0, Lcom/android/support/DialogHelper$3;->val$seconds:I

    iput p1, p0, Lcom/android/support/DialogHelper$3;->remainingTime:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 64
    iget v0, p0, Lcom/android/support/DialogHelper$3;->remainingTime:I

    const/4 v1, -0x2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/support/DialogHelper$3;->val$dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/support/DialogHelper$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/support/DialogHelper$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/support/DialogHelper$3;->val$CloseBtnTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/support/DialogHelper$3;->remainingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget v0, p0, Lcom/android/support/DialogHelper$3;->remainingTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/support/DialogHelper$3;->remainingTime:I

    .line 68
    iget-object v0, p0, Lcom/android/support/DialogHelper$3;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/support/DialogHelper$3;->val$dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/support/DialogHelper$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/support/DialogHelper$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 72
    :cond_1
    :goto_0
    return-void
.end method
