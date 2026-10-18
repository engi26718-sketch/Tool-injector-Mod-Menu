.class Lcom/android/support/Menu$14;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu;->InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/Menu;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$featName:Ljava/lang/String;

.field final synthetic val$featNum:I

.field final synthetic val$maxValue:I


# direct methods
.method constructor <init>(Lcom/android/support/Menu;ILandroid/widget/Button;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/Menu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 753
    iput-object p1, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iput p2, p0, Lcom/android/support/Menu$14;->val$maxValue:I

    iput-object p3, p0, Lcom/android/support/Menu$14;->val$button:Landroid/widget/Button;

    iput-object p4, p0, Lcom/android/support/Menu$14;->val$featName:Ljava/lang/String;

    iput p5, p0, Lcom/android/support/Menu$14;->val$featNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 756
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget-object v1, v1, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 757
    .local v0, "alertName":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget-object v2, v2, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 758
    .local v1, "editText":Landroid/widget/EditText;
    iget v2, p0, Lcom/android/support/Menu$14;->val$maxValue:I

    if-eqz v2, :cond_0

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/support/Menu$14;->val$maxValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 760
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 761
    const-string v2, "0123456789-"

    invoke-static {v2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 762
    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/InputFilter;

    .line 763
    .local v3, "FilterArray":[Landroid/text/InputFilter;
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 764
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 765
    new-instance v4, Lcom/android/support/Menu$14$1;

    invoke-direct {v4, p0}, Lcom/android/support/Menu$14$1;-><init>(Lcom/android/support/Menu$14;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 776
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 778
    const-string v4, "Input number"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 779
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 780
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 781
    .local v4, "layoutName":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 782
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 783
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 785
    new-instance v2, Lcom/android/support/Menu$14$2;

    invoke-direct {v2, p0, v1}, Lcom/android/support/Menu$14$2;-><init>(Lcom/android/support/Menu$14;Landroid/widget/EditText;)V

    const-string v5, "OK"

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 806
    new-instance v2, Lcom/android/support/Menu$14$3;

    invoke-direct {v2, p0}, Lcom/android/support/Menu$14$3;-><init>(Lcom/android/support/Menu$14;)V

    const-string v5, "Cancel"

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 814
    iget-object v2, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget-boolean v2, v2, Lcom/android/support/Menu;->overlayRequired:Z

    if-eqz v2, :cond_2

    .line 815
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 816
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Window;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_1

    const/16 v6, 0x7f6

    goto :goto_0

    :cond_1
    const/16 v6, 0x7d2

    :goto_0
    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 817
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 818
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    goto :goto_1

    .line 819
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 821
    :goto_1
    return-void
.end method
