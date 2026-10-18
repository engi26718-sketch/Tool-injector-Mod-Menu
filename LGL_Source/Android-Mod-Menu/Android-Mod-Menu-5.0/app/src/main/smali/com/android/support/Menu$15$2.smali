.class Lcom/android/support/Menu$15$2;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/support/Menu$15;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/support/Menu$15;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/support/Menu$15;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 872
    iput-object p1, p0, Lcom/android/support/Menu$15$2;->this$1:Lcom/android/support/Menu$15;

    iput-object p2, p0, Lcom/android/support/Menu$15$2;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 876
    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/support/Menu$15$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 877
    .local v2, "inp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0"

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 878
    .local v3, "num":J
    iget-object v5, p0, Lcom/android/support/Menu$15$2;->this$1:Lcom/android/support/Menu$15;

    iget-wide v5, v5, Lcom/android/support/Menu$15;->val$maxValue:J

    cmp-long v7, v5, v0

    if-eqz v7, :cond_1

    iget-object v5, p0, Lcom/android/support/Menu$15$2;->this$1:Lcom/android/support/Menu$15;

    iget-wide v5, v5, Lcom/android/support/Menu$15;->val$maxValue:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    .line 879
    iget-object v5, p0, Lcom/android/support/Menu$15$2;->this$1:Lcom/android/support/Menu$15;

    iget-wide v0, v5, Lcom/android/support/Menu$15;->val$maxValue:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v3, v0

    .line 885
    .end local v2    # "inp":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 880
    .end local v3    # "num":J
    :catch_0
    move-exception v2

    .line 881
    .local v2, "ex":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/android/support/Menu$15$2;->this$1:Lcom/android/support/Menu$15;

    iget-wide v3, v3, Lcom/android/support/Menu$15;->val$maxValue:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_2

    .line 882
    iget-object v0, p0, Lcom/android/support/Menu$15$2;->this$1:Lcom/android/support/Menu$15;

    iget-wide v3, v0, Lcom/android/support/Menu$15;->val$maxValue:J

    .restart local v3    # "num":J
    goto :goto_1

    .line 884
    .end local v3    # "num":J
    :cond_2
    const-wide v3, 0x7fffffffffffffffL

    .line 887
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v3    # "num":J
    :goto_1
    iget-object v0, p0, Lcom/android/support/Menu$15$2;->this$1:Lcom/android/support/Menu$15;

    iget-object v0, v0, Lcom/android/support/Menu$15;->val$button:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/support/Menu$15$2;->this$1:Lcom/android/support/Menu$15;

    iget-object v2, v2, Lcom/android/support/Menu$15;->val$featName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <font color=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/support/Menu$15$2;->this$1:Lcom/android/support/Menu$15;

    iget-object v2, v2, Lcom/android/support/Menu$15;->this$0:Lcom/android/support/Menu;

    iget-object v2, v2, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v0, p0, Lcom/android/support/Menu$15$2;->this$1:Lcom/android/support/Menu$15;

    iget-object v0, v0, Lcom/android/support/Menu$15;->val$featName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/support/Menu$15$2;->this$1:Lcom/android/support/Menu$15;

    iget v1, v1, Lcom/android/support/Menu$15;->val$featNum:I

    invoke-static {v0, v1, v3, v4}, Lcom/android/support/Preferences;->changeFeatureLong(Ljava/lang/String;IJ)V

    .line 890
    iget-object v0, p0, Lcom/android/support/Menu$15$2;->val$editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 891
    return-void
.end method
