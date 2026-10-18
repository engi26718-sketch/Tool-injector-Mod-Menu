.class Lcom/android/support/Menu$16$2;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/support/Menu$16;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/support/Menu$16;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/support/Menu$16;
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

    .line 956
    iput-object p1, p0, Lcom/android/support/Menu$16$2;->this$1:Lcom/android/support/Menu$16;

    iput-object p2, p0, Lcom/android/support/Menu$16$2;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 958
    iget-object v0, p0, Lcom/android/support/Menu$16$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/support/Menu$16$2;->this$1:Lcom/android/support/Menu$16;

    iget-object v1, v1, Lcom/android/support/Menu$16;->val$button:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/support/Menu$16$2;->this$1:Lcom/android/support/Menu$16;

    iget-object v3, v3, Lcom/android/support/Menu$16;->val$featName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": <font color=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/support/Menu$16$2;->this$1:Lcom/android/support/Menu$16;

    iget-object v3, v3, Lcom/android/support/Menu$16;->this$0:Lcom/android/support/Menu;

    iget-object v3, v3, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 960
    iget-object v1, p0, Lcom/android/support/Menu$16$2;->this$1:Lcom/android/support/Menu$16;

    iget-object v1, v1, Lcom/android/support/Menu$16;->val$featName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/support/Menu$16$2;->this$1:Lcom/android/support/Menu$16;

    iget v2, v2, Lcom/android/support/Menu$16;->val$featNum:I

    invoke-static {v1, v2, v0}, Lcom/android/support/Preferences;->changeFeatureString(Ljava/lang/String;ILjava/lang/String;)V

    .line 961
    iget-object v1, p0, Lcom/android/support/Menu$16$2;->val$editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 962
    return-void
.end method
