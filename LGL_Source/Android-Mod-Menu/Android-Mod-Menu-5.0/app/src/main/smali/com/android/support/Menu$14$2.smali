.class Lcom/android/support/Menu$14$2;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/support/Menu$14;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/support/Menu$14;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/support/Menu$14;
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

    .line 785
    iput-object p1, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iput-object p2, p0, Lcom/android/support/Menu$14$2;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/android/support/Menu$14$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "inp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 791
    .local v1, "num":I
    iget-object v2, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget v2, v2, Lcom/android/support/Menu$14;->val$maxValue:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget v2, v2, Lcom/android/support/Menu$14;->val$maxValue:I

    if-lt v1, v2, :cond_1

    .line 792
    iget-object v2, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget v2, v2, Lcom/android/support/Menu$14;->val$maxValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 798
    .end local v0    # "inp":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 793
    .end local v1    # "num":I
    :catch_0
    move-exception v0

    .line 794
    .local v0, "ex":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget v1, v1, Lcom/android/support/Menu$14;->val$maxValue:I

    if-eqz v1, :cond_2

    .line 795
    iget-object v1, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget v1, v1, Lcom/android/support/Menu$14;->val$maxValue:I

    .restart local v1    # "num":I
    goto :goto_1

    .line 797
    .end local v1    # "num":I
    :cond_2
    const v1, 0x7fffffff

    .line 800
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v1    # "num":I
    :goto_1
    iget-object v0, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget-object v0, v0, Lcom/android/support/Menu$14;->val$button:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget-object v3, v3, Lcom/android/support/Menu$14;->val$featName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": <font color=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget-object v3, v3, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget-object v3, v3, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 801
    iget-object v0, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget-object v0, v0, Lcom/android/support/Menu$14;->val$featName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/support/Menu$14$2;->this$1:Lcom/android/support/Menu$14;

    iget v2, v2, Lcom/android/support/Menu$14;->val$featNum:I

    invoke-static {v0, v2, v1}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    .line 802
    iget-object v0, p0, Lcom/android/support/Menu$14$2;->val$editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 803
    return-void
.end method
