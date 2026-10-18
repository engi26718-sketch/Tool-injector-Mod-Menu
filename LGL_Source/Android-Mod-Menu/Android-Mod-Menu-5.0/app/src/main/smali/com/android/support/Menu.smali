.class public Lcom/android/support/Menu;
.super Ljava/lang/Object;
.source "Menu.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Mod_Menu"


# instance fields
.field BTN_COLOR:I

.field BtnOFF:I

.field BtnON:I

.field CategoryBG:I

.field CheckBoxColor:I

.field CollapseColor:I

.field ICON_ALPHA:F

.field ICON_SIZE:I

.field MENU_BG_COLOR:I

.field MENU_CORNER:F

.field MENU_FEATURE_BG_COLOR:I

.field MENU_HEIGHT:I

.field MENU_WIDTH:I

.field NumberTxtColor:Ljava/lang/String;

.field POS_X:I

.field POS_Y:I

.field RadioColor:I

.field SeekBarColor:I

.field SeekBarProgressColor:I

.field TEXT_COLOR:I

.field TEXT_COLOR_2:I

.field ToggleOFF:I

.field ToggleON:I

.field getContext:Landroid/content/Context;

.field mCollapse:Landroid/widget/LinearLayout;

.field mCollapsed:Landroid/widget/RelativeLayout;

.field mExpanded:Landroid/widget/LinearLayout;

.field mRootContainer:Landroid/widget/RelativeLayout;

.field mSettings:Landroid/widget/LinearLayout;

.field mWindowManager:Landroid/view/WindowManager;

.field mods:Landroid/widget/LinearLayout;

.field overlayRequired:Z

.field rootFrame:Landroid/widget/FrameLayout;

.field scrlLL:Landroid/widget/LinearLayout$LayoutParams;

.field scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

.field scrollView:Landroid/widget/ScrollView;

.field startimage:Landroid/widget/ImageView;

.field stopChecking:Z

.field vmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v2, "#82CAFD"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/support/Menu;->TEXT_COLOR:I

    .line 72
    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    .line 73
    const-string v3, "#1C262D"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/support/Menu;->BTN_COLOR:I

    .line 74
    const-string v3, "#EE1C2A35"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/support/Menu;->MENU_BG_COLOR:I

    .line 75
    const-string v3, "#DD141C22"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/support/Menu;->MENU_FEATURE_BG_COLOR:I

    .line 76
    const/16 v3, 0x122

    iput v3, v0, Lcom/android/support/Menu;->MENU_WIDTH:I

    .line 77
    const/16 v3, 0xd2

    iput v3, v0, Lcom/android/support/Menu;->MENU_HEIGHT:I

    .line 78
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/support/Menu;->POS_X:I

    .line 79
    const/16 v4, 0x64

    iput v4, v0, Lcom/android/support/Menu;->POS_Y:I

    .line 81
    const/high16 v4, 0x40800000    # 4.0f

    iput v4, v0, Lcom/android/support/Menu;->MENU_CORNER:F

    .line 82
    const/16 v4, 0x2d

    iput v4, v0, Lcom/android/support/Menu;->ICON_SIZE:I

    .line 83
    const v4, 0x3f333333    # 0.7f

    iput v4, v0, Lcom/android/support/Menu;->ICON_ALPHA:F

    .line 84
    const v4, -0xff0100

    iput v4, v0, Lcom/android/support/Menu;->ToggleON:I

    .line 85
    const/high16 v4, -0x10000

    iput v4, v0, Lcom/android/support/Menu;->ToggleOFF:I

    .line 86
    const-string v4, "#1b5e20"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/support/Menu;->BtnON:I

    .line 87
    const-string v4, "#7f0000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/support/Menu;->BtnOFF:I

    .line 88
    const-string v4, "#2F3D4C"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/support/Menu;->CategoryBG:I

    .line 89
    const-string v4, "#80CBC4"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/support/Menu;->SeekBarColor:I

    .line 90
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/support/Menu;->SeekBarProgressColor:I

    .line 91
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/support/Menu;->CheckBoxColor:I

    .line 92
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/support/Menu;->RadioColor:I

    .line 93
    const-string v2, "#232F2C"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/support/Menu;->CollapseColor:I

    .line 94
    const-string v2, "#41c300"

    iput-object v2, v0, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    .line 125
    iput-object v1, v0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    .line 126
    sput-object v1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    .line 127
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    .line 128
    iget-object v2, v0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    invoke-direct {v0}, Lcom/android/support/Menu;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    .line 130
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    .line 131
    iget-object v2, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 132
    iget-object v2, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    iget v4, v0, Lcom/android/support/Menu;->ICON_ALPHA:F

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 135
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    .line 136
    iget-object v2, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v2, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    iget v4, v0, Lcom/android/support/Menu;->MENU_BG_COLOR:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 138
    iget-object v2, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 140
    iget-object v2, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v0, Lcom/android/support/Menu;->MENU_WIDTH:I

    invoke-direct {v0, v6}, Lcom/android/support/Menu;->dp(I)I

    move-result v6

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 142
    .local v2, "gdMenuBody":Landroid/graphics/drawable/GradientDrawable;
    iget v5, v0, Lcom/android/support/Menu;->MENU_CORNER:F

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 143
    iget v5, v0, Lcom/android/support/Menu;->MENU_BG_COLOR:I

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 144
    const-string v5, "#32cb00"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 148
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    .line 149
    iget-object v5, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget v5, v0, Lcom/android/support/Menu;->ICON_SIZE:I

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 151
    .local v5, "applyDimension":I
    iget-object v6, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 152
    iget-object v6, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    iget-object v6, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 155
    invoke-virtual {v0}, Lcom/android/support/Menu;->Icon()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 156
    .local v6, "decode":[B
    iget-object v8, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    array-length v9, v6

    invoke-static {v6, v3, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    iget-object v8, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v9, 0xa

    invoke-direct {v0, v9}, Lcom/android/support/Menu;->convertDipToPixels(I)I

    move-result v10

    iput v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 159
    iget-object v8, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    invoke-direct {v0}, Lcom/android/support/Menu;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    iget-object v8, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    new-instance v10, Lcom/android/support/Menu$1;

    invoke-direct {v10, v0}, Lcom/android/support/Menu$1;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const/4 v8, 0x0

    .line 169
    .local v8, "wView":Landroid/webkit/WebView;
    invoke-virtual {v0}, Lcom/android/support/Menu;->IconWebViewData()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 170
    new-instance v10, Landroid/webkit/WebView;

    invoke-direct {v10, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object v8, v10

    .line 171
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget v10, v0, Lcom/android/support/Menu;->ICON_SIZE:I

    int-to-float v10, v10

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v4, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    .line 173
    .local v10, "applyDimension2":I
    invoke-virtual {v8}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iput v10, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 174
    invoke-virtual {v8}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iput v10, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 175
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<html><head></head><body style=\"margin: 0; padding: 0\"><img src=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 178
    invoke-virtual {v0}, Lcom/android/support/Menu;->IconWebViewData()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" width=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/android/support/Menu;->ICON_SIZE:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" height=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/android/support/Menu;->ICON_SIZE:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" ></body></html>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 175
    const-string v12, "text/html"

    const-string v13, "utf-8"

    invoke-virtual {v8, v11, v12, v13}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v8, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 182
    iget v11, v0, Lcom/android/support/Menu;->ICON_ALPHA:F

    invoke-virtual {v8, v11}, Landroid/webkit/WebView;->setAlpha(F)V

    .line 183
    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 184
    invoke-direct {v0}, Lcom/android/support/Menu;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    .end local v10    # "applyDimension2":I
    :cond_0
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 189
    .local v10, "settings":Landroid/widget/TextView;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-lt v11, v12, :cond_1

    const-string v11, "\u2699"

    goto :goto_0

    :cond_1
    const-string v11, "\ud83d\udd27"

    :goto_0
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget v11, v0, Lcom/android/support/Menu;->TEXT_COLOR:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 192
    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 193
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 194
    .local v11, "rlsettings":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xb

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 195
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    new-instance v13, Lcom/android/support/Menu$2;

    invoke-direct {v13, v0}, Lcom/android/support/Menu$2;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/android/support/Menu;->mSettings:Landroid/widget/LinearLayout;

    .line 218
    iget-object v13, v0, Lcom/android/support/Menu;->mSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    invoke-virtual {v0}, Lcom/android/support/Menu;->SettingsList()[Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/android/support/Menu;->mSettings:Landroid/widget/LinearLayout;

    invoke-direct {v0, v13, v14}, Lcom/android/support/Menu;->featureList([Ljava/lang/String;Landroid/widget/LinearLayout;)V

    .line 222
    new-instance v13, Landroid/widget/RelativeLayout;

    invoke-direct {v13, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 223
    .local v13, "titleText":Landroid/widget/RelativeLayout;
    const/4 v14, 0x5

    invoke-virtual {v13, v9, v14, v9, v14}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 224
    const/16 v15, 0x10

    invoke-virtual {v13, v15}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 226
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 227
    .local v15, "title":Landroid/widget/TextView;
    iget v12, v0, Lcom/android/support/Menu;->TEXT_COLOR:I

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 229
    const/16 v12, 0x11

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 230
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v9, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xe

    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 232
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 236
    .local v7, "subTitle":Landroid/widget/TextView;
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 237
    const/4 v3, -0x1

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 238
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 239
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 240
    iget v4, v0, Lcom/android/support/Menu;->TEXT_COLOR:I

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 242
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 243
    const/4 v4, 0x0

    invoke-virtual {v7, v4, v4, v4, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 246
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    .line 248
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v14, v0, Lcom/android/support/Menu;->MENU_HEIGHT:I

    invoke-direct {v0, v14}, Lcom/android/support/Menu;->dp(I)I

    move-result v14

    invoke-direct {v4, v3, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, v0, Lcom/android/support/Menu;->scrlLL:Landroid/widget/LinearLayout$LayoutParams;

    .line 249
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, v0, Lcom/android/support/Menu;->scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

    .line 250
    iget-object v3, v0, Lcom/android/support/Menu;->scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 251
    iget-object v3, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    sget-boolean v4, Lcom/android/support/Preferences;->isExpanded:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/support/Menu;->scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/android/support/Menu;->scrlLL:Landroid/widget/LinearLayout$LayoutParams;

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v3, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    iget v4, v0, Lcom/android/support/Menu;->MENU_FEATURE_BG_COLOR:I

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 253
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    .line 254
    iget-object v3, v0, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 257
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 258
    .local v3, "relativeLayout":Landroid/widget/RelativeLayout;
    const/4 v4, 0x3

    const/16 v14, 0xa

    invoke-virtual {v3, v14, v4, v14, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 259
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 262
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v4, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 263
    .local v4, "lParamsHideBtn":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0x9

    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 265
    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 266
    .local v12, "hideBtn":Landroid/widget/Button;
    invoke-virtual {v12, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 268
    const-string v14, "HIDE/KILL (Hold)"

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget v14, v0, Lcom/android/support/Menu;->TEXT_COLOR:I

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setTextColor(I)V

    .line 270
    new-instance v14, Lcom/android/support/Menu$3;

    invoke-direct {v14, v0}, Lcom/android/support/Menu$3;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    new-instance v14, Lcom/android/support/Menu$4;

    invoke-direct {v14, v0}, Lcom/android/support/Menu$4;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 288
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v17, v2

    const/4 v2, -0x2

    .end local v2    # "gdMenuBody":Landroid/graphics/drawable/GradientDrawable;
    .local v17, "gdMenuBody":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v14, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 289
    .local v14, "lParamsCloseBtn":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 291
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 292
    .local v2, "closeBtn":Landroid/widget/Button;
    invoke-virtual {v2, v14}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    move-object/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "lParamsHideBtn":Landroid/widget/RelativeLayout$LayoutParams;
    .local v16, "lParamsHideBtn":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 294
    const-string v4, "MINIMIZE"

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget v4, v0, Lcom/android/support/Menu;->TEXT_COLOR:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 296
    new-instance v4, Lcom/android/support/Menu$5;

    invoke-direct {v4, v0}, Lcom/android/support/Menu$5;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v4, v0, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    move/from16 v18, v5

    .end local v5    # "applyDimension":I
    .local v18, "applyDimension":I
    iget-object v5, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 306
    iget-object v4, v0, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    iget-object v5, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 307
    invoke-virtual {v0}, Lcom/android/support/Menu;->IconWebViewData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 308
    iget-object v4, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 310
    :cond_3
    iget-object v4, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    iget-object v5, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 312
    :goto_2
    invoke-virtual {v13, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 313
    invoke-virtual {v13, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 314
    iget-object v4, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    iget-object v4, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 316
    iget-object v4, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    iget-object v5, v0, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 317
    iget-object v4, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 319
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 320
    iget-object v4, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    invoke-virtual {v0, v1, v15, v7}, Lcom/android/support/Menu;->Init(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 323
    return-void
.end method

.method private Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .locals 4
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;

    .line 617
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 618
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 619
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 620
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    iget v2, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 622
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 623
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget v2, p0, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 625
    new-instance v2, Lcom/android/support/Menu$10;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/support/Menu$10;-><init>(Lcom/android/support/Menu;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 642
    return-void
.end method

.method private ButtonLink(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featName"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .line 645
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 646
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 647
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 648
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 650
    iget v2, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 651
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget v2, p0, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 653
    new-instance v2, Lcom/android/support/Menu$11;

    invoke-direct {v2, p0, p3}, Lcom/android/support/Menu$11;-><init>(Lcom/android/support/Menu;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    return-void
.end method

.method private ButtonOnOff(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .locals 8
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;
    .param p4, "switchedOn"    # Z

    .line 665
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v7, v0

    .line 666
    .local v7, "button":Landroid/widget/Button;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 667
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x7

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 668
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    iget v1, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 670
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 672
    const-string v1, "OnOff_"

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 673
    .local v5, "finalfeatName":Ljava/lang/String;
    invoke-static {p3, p2, p4}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result v1

    .line 674
    .local v1, "isOn":Z
    if-eqz v1, :cond_0

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget v2, p0, Lcom/android/support/Menu;->BtnON:I

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 677
    const/4 v1, 0x0

    goto :goto_0

    .line 679
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget v2, p0, Lcom/android/support/Menu;->BtnOFF:I

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 681
    const/4 v1, 0x1

    .line 683
    :goto_0
    move v4, v1

    .line 684
    .local v4, "finalIsOn":Z
    new-instance v2, Lcom/android/support/Menu$12;

    move-object v3, p0

    move v6, p2

    .end local p2    # "featNum":I
    .local v6, "featNum":I
    invoke-direct/range {v2 .. v7}, Lcom/android/support/Menu$12;-><init>(Lcom/android/support/Menu;ZLjava/lang/String;ILandroid/widget/Button;)V

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 702
    return-void
.end method

.method private Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 3
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "text"    # Ljava/lang/String;

    .line 1100
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1101
    .local v0, "textView":Landroid/widget/TextView;
    iget v1, p0, Lcom/android/support/Menu;->CategoryBG:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1102
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1104
    iget v1, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1105
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1106
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1107
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1108
    return-void
.end method

.method private CheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .locals 2
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;
    .param p4, "switchedOn"    # Z

    .line 989
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 990
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 991
    iget v1, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 992
    iget v1, p0, Lcom/android/support/Menu;->CheckBoxColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 993
    invoke-static {p3, p2, p4}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 994
    new-instance v1, Lcom/android/support/Menu$17;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/android/support/Menu$17;-><init>(Lcom/android/support/Menu;Landroid/widget/CheckBox;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1004
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1005
    return-void
.end method

.method private Collapse(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "expanded"    # Z

    .line 1048
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v6, v0

    .line 1049
    .local v6, "layoutParamsLL":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x0

    const/4 v2, 0x5

    invoke-virtual {v6, v0, v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1051
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v7, v3

    .line 1052
    .local v7, "collapse":Landroid/widget/LinearLayout;
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1053
    const/16 v3, 0x10

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 1054
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1056
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1057
    .local v8, "collapseSub":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 1058
    invoke-virtual {v8, v0, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1059
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1060
    const-string v2, "#222D38"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1061
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1062
    iput-object v8, p0, Lcom/android/support/Menu;->mCollapse:Landroid/widget/LinearLayout;

    .line 1064
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1065
    .local v2, "textView":Landroid/widget/TextView;
    iget v3, p0, Lcom/android/support/Menu;->CollapseColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1066
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u25bd "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " \u25bd"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1068
    iget v3, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1069
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1070
    const/16 v3, 0x14

    invoke-virtual {v2, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1072
    if-eqz p3, :cond_0

    .line 1073
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u25b3 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u25b3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    :cond_0
    new-instance v0, Lcom/android/support/Menu$19;

    move-object v1, p0

    move-object v5, p2

    move-object v4, v2

    move-object v3, v8

    move v2, p3

    .end local v2    # "textView":Landroid/widget/TextView;
    .end local v8    # "collapseSub":Landroid/widget/LinearLayout;
    .local v3, "collapseSub":Landroid/widget/LinearLayout;
    .local v4, "textView":Landroid/widget/TextView;
    invoke-direct/range {v0 .. v5}, Lcom/android/support/Menu$19;-><init>(Lcom/android/support/Menu;ZLandroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1095
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1096
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1097
    return-void
.end method

.method private InputLNum(Landroid/widget/LinearLayout;ILjava/lang/String;J)V
    .locals 11
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;
    .param p4, "maxValue"    # J

    .line 829
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 830
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 831
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 833
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v8, v2

    .line 834
    .local v8, "button":Landroid/widget/Button;
    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 835
    .local v2, "num":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": <font color=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 836
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 837
    invoke-virtual {v8, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    iget v4, p0, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 839
    iget v4, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 840
    new-instance v4, Lcom/android/support/Menu$15;

    move-object v5, p0

    move v10, p2

    move-object v9, p3

    move-wide v6, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/support/Menu$15;-><init>(Lcom/android/support/Menu;JLandroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 913
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 914
    return-void
.end method

.method private InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V
    .locals 10
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;
    .param p4, "maxValue"    # I

    .line 742
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 743
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 744
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 746
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v7, v2

    .line 747
    .local v7, "button":Landroid/widget/Button;
    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v2

    .line 748
    .local v2, "num":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": <font color=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 749
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 750
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    iget v3, p0, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 752
    iget v3, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 753
    new-instance v4, Lcom/android/support/Menu$14;

    move-object v5, p0

    move v9, p2

    move-object v8, p3

    move v6, p4

    .end local p2    # "featNum":I
    .end local p3    # "featName":Ljava/lang/String;
    .end local p4    # "maxValue":I
    .local v6, "maxValue":I
    .local v8, "featName":Ljava/lang/String;
    .local v9, "featNum":I
    invoke-direct/range {v4 .. v9}, Lcom/android/support/Menu$14;-><init>(Lcom/android/support/Menu;ILandroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 825
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 826
    return-void
.end method

.method private InputText(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .locals 6
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;

    .line 917
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 918
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 919
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 921
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 923
    .local v2, "button":Landroid/widget/Button;
    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 924
    .local v3, "string":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": <font color=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 926
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 927
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    iget v4, p0, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 929
    iget v4, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 930
    new-instance v4, Lcom/android/support/Menu$16;

    invoke-direct {v4, p0, v2, p3, p2}, Lcom/android/support/Menu$16;-><init>(Lcom/android/support/Menu;Landroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 984
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 985
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 986
    return-void
.end method

.method private RadioButton(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;
    .param p4, "list"    # Ljava/lang/String;

    .line 1010
    move-object/from16 v0, p3

    new-instance v1, Ljava/util/LinkedList;

    const-string v2, ","

    move-object/from16 v3, p4

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1012
    .local v1, "lists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v7, v2

    .line 1013
    .local v7, "textView":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    iget v2, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1016
    new-instance v11, Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 1017
    .local v11, "radioGroup":Landroid/widget/RadioGroup;
    const/16 v2, 0xa

    const/4 v4, 0x5

    invoke-virtual {v11, v2, v4, v2, v4}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    .line 1018
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 1019
    invoke-virtual {v11, v7}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1021
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1022
    new-instance v12, Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v12, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 1023
    .local v12, "Radioo":Landroid/widget/RadioButton;
    move-object/from16 v8, p3

    .local v8, "finalfeatName":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    .line 1024
    .local v9, "radioName":Ljava/lang/String;
    new-instance v5, Lcom/android/support/Menu$18;

    move-object v6, p0

    move/from16 v10, p2

    invoke-direct/range {v5 .. v12}, Lcom/android/support/Menu$18;-><init>(Lcom/android/support/Menu;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RadioGroup;Landroid/widget/RadioButton;)V

    .line 1030
    .local v5, "first_radio_listener":Landroid/view/View$OnClickListener;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1031
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v12, v10}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    const v10, -0x333334

    invoke-virtual {v12, v10}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1033
    iget v10, p0, Lcom/android/support/Menu;->RadioColor:I

    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 1034
    invoke-virtual {v12, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    invoke-virtual {v11, v12}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1021
    .end local v5    # "first_radio_listener":Landroid/view/View$OnClickListener;
    .end local v8    # "finalfeatName":Ljava/lang/String;
    .end local v9    # "radioName":Ljava/lang/String;
    .end local v12    # "Radioo":Landroid/widget/RadioButton;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1038
    .end local v4    # "i":I
    :cond_0
    move/from16 v10, p2

    invoke-static {v0, v10}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v4

    .line 1039
    .local v4, "index":I
    if-lez v4, :cond_1

    .line 1040
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": <font color=\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\'>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v8, v4, -0x1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    invoke-virtual {v11, v4}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1043
    :cond_1
    invoke-virtual {p1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1044
    return-void
.end method

.method private SeekBar(Landroid/widget/LinearLayout;ILjava/lang/String;II)V
    .locals 11
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;
    .param p4, "min"    # I
    .param p5, "max"    # I

    .line 578
    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v0

    .line 579
    .local v0, "loadedProg":I
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 580
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-virtual {v1, v4, v2, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 581
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 582
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 584
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v10, v2

    .line 585
    .local v10, "textView":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": <font color=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_0

    move v3, p4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget v2, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 588
    new-instance v2, Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 589
    .local v2, "seekBar":Landroid/widget/SeekBar;
    const/16 v3, 0x19

    const/16 v5, 0x23

    invoke-virtual {v2, v3, v4, v5, v4}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 590
    move/from16 v3, p5

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 591
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_1

    .line 592
    invoke-virtual {v2, p4}, Landroid/widget/SeekBar;->setMin(I)V

    .line 593
    :cond_1
    if-nez v0, :cond_2

    move v4, p4

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 594
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/android/support/Menu;->SeekBarColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 595
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/android/support/Menu;->SeekBarProgressColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 596
    new-instance v5, Lcom/android/support/Menu$9;

    move-object v6, p0

    move v9, p2

    move-object v8, p3

    move v7, p4

    invoke-direct/range {v5 .. v10}, Lcom/android/support/Menu$9;-><init>(Lcom/android/support/Menu;ILjava/lang/String;ILandroid/widget/TextView;)V

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 610
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 611
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 613
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 614
    return-void
.end method

.method private Spinner(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;
    .param p4, "list"    # Ljava/lang/String;

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spinner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mod_Menu"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v0, Ljava/util/LinkedList;

    const-string v1, ","

    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 710
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 711
    .local v1, "linearLayout2":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 712
    .local v2, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x7

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 713
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 714
    iget v4, p0, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 715
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    new-instance v4, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 718
    .local v4, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    invoke-virtual {v4}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 721
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const v6, 0x1090009

    invoke-direct {v3, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 722
    .local v3, "aa":Landroid/widget/ArrayAdapter;
    invoke-virtual {v3, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 724
    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 725
    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 726
    new-instance v5, Lcom/android/support/Menu$13;

    invoke-direct {v5, p0, v4, p2}, Lcom/android/support/Menu$13;-><init>(Lcom/android/support/Menu;Landroid/widget/Spinner;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 737
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 738
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 739
    return-void
.end method

.method private Switch(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .locals 7
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;
    .param p4, "swiOn"    # Z

    .line 534
    new-instance v0, Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 535
    .local v0, "switchR":Landroid/widget/Switch;
    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    new-array v3, v2, [I

    const/4 v4, 0x3

    new-array v4, v4, [[I

    const v5, -0x101009e

    filled-new-array {v5}, [I

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x10100a0

    filled-new-array {v5}, [I

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v3, v4, v5

    iget v3, p0, Lcom/android/support/Menu;->ToggleON:I

    iget v5, p0, Lcom/android/support/Menu;->ToggleOFF:I

    const v6, -0xffff01

    filled-new-array {v6, v3, v5}, [I

    move-result-object v3

    invoke-direct {v1, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 549
    .local v1, "buttonStates":Landroid/content/res/ColorStateList;
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 550
    invoke-virtual {v0}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    goto :goto_0

    .line 551
    :catch_0
    move-exception v3

    .line 552
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string v4, "Mod_Menu"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget v3, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setTextColor(I)V

    .line 556
    const/16 v3, 0xa

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4, v2, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 557
    invoke-static {p3, p2, p4}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 558
    new-instance v2, Lcom/android/support/Menu$8;

    invoke-direct {v2, p0, p3, p2, v0}, Lcom/android/support/Menu$8;-><init>(Lcom/android/support/Menu;Ljava/lang/String;ILandroid/widget/Switch;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 574
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 575
    return-void
.end method

.method private TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 3
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "text"    # Ljava/lang/String;

    .line 1111
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1112
    .local v0, "textView":Landroid/widget/TextView;
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    iget v1, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1114
    const/16 v1, 0xa

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1115
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1116
    return-void
.end method

.method private WebTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 3
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "text"    # Ljava/lang/String;

    .line 1119
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1120
    .local v0, "wView":Landroid/webkit/WebView;
    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {v0, p2, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1122
    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 1123
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1124
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1125
    return-void
.end method

.method static synthetic access$000(Lcom/android/support/Menu;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/support/Menu;
    .param p1, "x1"    # Landroid/widget/LinearLayout;
    .param p2, "x2"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/support/Menu;->Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/support/Menu;Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/support/Menu;
    .param p1, "x1"    # Landroid/widget/LinearLayout;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/support/Menu;->Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/support/Menu;[Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/support/Menu;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/LinearLayout;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/support/Menu;->featureList([Ljava/lang/String;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/support/Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/support/Menu;

    .line 67
    invoke-direct {p0}, Lcom/android/support/Menu;->isViewCollapsed()Z

    move-result v0

    return v0
.end method

.method private convertDipToPixels(I)I
    .locals 2
    .param p1, "i"    # I

    .line 1133
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private dp(I)I
    .locals 3
    .param p1, "i"    # I

    .line 1137
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private featureList([Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 17
    .param p1, "listFT"    # [Ljava/lang/String;
    .param p2, "linearLayout"    # Landroid/widget/LinearLayout;

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    const/4 v1, 0x0

    .line 446
    .local v1, "subFeat":I
    move-object/from16 v7, p2

    .line 448
    .local v7, "llBak":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    move v8, v2

    move v2, v1

    move-object/from16 v1, p2

    .end local p2    # "linearLayout":Landroid/widget/LinearLayout;
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    .local v2, "subFeat":I
    .local v8, "i":I
    :goto_0
    array-length v3, v6

    if-ge v8, v3, :cond_9

    .line 449
    const/4 v3, 0x0

    .line 451
    .local v3, "switchedOn":Z
    aget-object v4, v6, v8

    .line 452
    .local v4, "feature":Ljava/lang/String;
    const-string v5, "_True"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, ""

    if-eqz v9, :cond_0

    .line 453
    const/4 v3, 0x1

    .line 454
    invoke-virtual {v4, v5, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v9, v3

    goto :goto_1

    .line 452
    :cond_0
    move v9, v3

    .line 457
    .end local v3    # "switchedOn":Z
    .local v9, "switchedOn":Z
    :goto_1
    move-object v1, v7

    .line 458
    const-string v3, "CollapseAdd_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 460
    iget-object v1, v0, Lcom/android/support/Menu;->mCollapse:Landroid/widget/LinearLayout;

    .line 461
    invoke-virtual {v4, v3, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 463
    :cond_1
    const-string v3, "_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 466
    .local v11, "str":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v12, v11, v5

    invoke-static {v12}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    aget-object v12, v11, v5

    const-string v13, "-[0-9]*"

    invoke-virtual {v12, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    .line 472
    :cond_2
    sub-int v10, v8, v2

    move v12, v10

    move v10, v2

    move v2, v12

    move-object v12, v4

    .local v10, "featNum":I
    goto :goto_3

    .line 467
    .end local v10    # "featNum":I
    :cond_3
    :goto_2
    aget-object v12, v11, v5

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 468
    .local v12, "featNum":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v11, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 469
    add-int/lit8 v2, v2, 0x1

    move v10, v2

    move v2, v12

    move-object v12, v4

    .line 474
    .end local v4    # "feature":Ljava/lang/String;
    .local v2, "featNum":I
    .local v10, "subFeat":I
    .local v12, "feature":Ljava/lang/String;
    :goto_3
    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 475
    .local v13, "strSplit":[Ljava/lang/String;
    aget-object v3, v13, v5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    sparse-switch v4, :sswitch_data_0

    :cond_4
    goto/16 :goto_4

    :sswitch_0
    const-string v4, "Button"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto/16 :goto_5

    :sswitch_1
    const-string v4, "CheckBox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    goto/16 :goto_5

    :sswitch_2
    const-string v4, "InputLValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x7

    goto/16 :goto_5

    :sswitch_3
    const-string v4, "RadioButton"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x9

    goto/16 :goto_5

    :sswitch_4
    const-string v4, "Category"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xc

    goto :goto_5

    :sswitch_5
    const-string v4, "RichTextView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xd

    goto :goto_5

    :sswitch_6
    const-string v4, "ButtonOnOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    goto :goto_5

    :sswitch_7
    const-string v4, "Spinner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    goto :goto_5

    :sswitch_8
    const-string v4, "Collapse"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xa

    goto :goto_5

    :sswitch_9
    const-string v4, "InputText"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x5

    goto :goto_5

    :sswitch_a
    const-string v4, "SeekBar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :sswitch_b
    const-string v4, "InputValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x6

    goto :goto_5

    :sswitch_c
    const-string v4, "Toggle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_5

    :sswitch_d
    const-string v4, "ButtonLink"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xb

    goto :goto_5

    :goto_4
    const/4 v3, -0x1

    :goto_5
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    .line 526
    :pswitch_0
    add-int/lit8 v10, v10, 0x1

    .line 527
    aget-object v3, v13, v16

    invoke-direct {v0, v1, v3}, Lcom/android/support/Menu;->TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 522
    :pswitch_1
    add-int/lit8 v10, v10, 0x1

    .line 523
    aget-object v3, v13, v16

    invoke-direct {v0, v1, v3}, Lcom/android/support/Menu;->Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 524
    goto/16 :goto_6

    .line 518
    :pswitch_2
    add-int/lit8 v10, v10, 0x1

    .line 519
    aget-object v3, v13, v16

    aget-object v4, v13, v15

    invoke-direct {v0, v1, v3, v4}, Lcom/android/support/Menu;->ButtonLink(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    goto/16 :goto_6

    .line 514
    :pswitch_3
    aget-object v3, v13, v16

    invoke-direct {v0, v1, v3, v9}, Lcom/android/support/Menu;->Collapse(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 515
    add-int/lit8 v10, v10, 0x1

    .line 516
    goto/16 :goto_6

    .line 511
    :pswitch_4
    aget-object v3, v13, v16

    aget-object v4, v13, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/support/Menu;->RadioButton(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V

    .line 512
    goto/16 :goto_6

    .line 508
    :pswitch_5
    aget-object v3, v13, v16

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/support/Menu;->CheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    .line 509
    goto/16 :goto_6

    .line 502
    :pswitch_6
    array-length v3, v13

    if-ne v3, v14, :cond_5

    .line 503
    aget-object v3, v13, v15

    aget-object v4, v13, v16

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/android/support/Menu;->InputLNum(Landroid/widget/LinearLayout;ILjava/lang/String;J)V

    .line 504
    :cond_5
    array-length v0, v13

    if-ne v0, v15, :cond_6

    .line 505
    aget-object v3, v13, v16

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/support/Menu;->InputLNum(Landroid/widget/LinearLayout;ILjava/lang/String;J)V

    goto :goto_6

    .line 504
    :cond_6
    move-object/from16 v0, p0

    goto :goto_6

    .line 496
    :pswitch_7
    array-length v3, v13

    if-ne v3, v14, :cond_7

    .line 497
    aget-object v3, v13, v15

    aget-object v4, v13, v16

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/support/Menu;->InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V

    .line 498
    :cond_7
    array-length v3, v13

    if-ne v3, v15, :cond_8

    .line 499
    aget-object v3, v13, v16

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/support/Menu;->InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V

    goto :goto_6

    .line 493
    :pswitch_8
    aget-object v3, v13, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/support/Menu;->InputText(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 494
    goto :goto_6

    .line 489
    :pswitch_9
    aget-object v3, v13, v16

    invoke-direct {v0, v1, v3}, Lcom/android/support/Menu;->TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 490
    aget-object v3, v13, v16

    aget-object v4, v13, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/support/Menu;->Spinner(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V

    .line 491
    goto :goto_6

    .line 486
    :pswitch_a
    aget-object v3, v13, v16

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/support/Menu;->ButtonOnOff(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    .line 487
    goto :goto_6

    .line 483
    :pswitch_b
    aget-object v3, v13, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/support/Menu;->Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 484
    goto :goto_6

    .line 480
    :pswitch_c
    aget-object v3, v13, v16

    aget-object v4, v13, v15

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v13, v14

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/support/Menu;->SeekBar(Landroid/widget/LinearLayout;ILjava/lang/String;II)V

    .line 481
    goto :goto_6

    .line 477
    :pswitch_d
    aget-object v3, v13, v16

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/support/Menu;->Switch(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    .line 478
    nop

    .line 448
    .end local v9    # "switchedOn":Z
    .end local v11    # "str":[Ljava/lang/String;
    .end local v12    # "feature":Ljava/lang/String;
    .end local v13    # "strSplit":[Ljava/lang/String;
    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move v2, v10

    goto/16 :goto_0

    .line 531
    .end local v8    # "i":I
    .end local v10    # "subFeat":I
    .local v2, "subFeat":I
    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73d2c194 -> :sswitch_d
        -0x6a5c588c -> :sswitch_c
        -0x370e8c19 -> :sswitch_b
        -0x274065a5 -> :sswitch_a
        -0x22cfc409 -> :sswitch_9
        -0x21d27833 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        -0x6595922 -> :sswitch_6
        0x4f11a8e -> :sswitch_5
        0x6dd211e -> :sswitch_4
        0x2e46a6ed -> :sswitch_3
        0x438c70af -> :sswitch_2
        0x5f7507c3 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isViewCollapsed()Z
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 395
    new-instance v0, Lcom/android/support/Menu$7;

    invoke-direct {v0, p0}, Lcom/android/support/Menu$7;-><init>(Lcom/android/support/Menu;)V

    return-object v0
.end method


# virtual methods
.method native GetFeatureList()[Ljava/lang/String;
.end method

.method native Icon()Ljava/lang/String;
.end method

.method native IconWebViewData()Ljava/lang/String;
.end method

.method native Init(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end method

.method native IsGameLibLoaded()Z
.end method

.method public SetWindowManagerActivity()V
    .locals 8

    .line 374
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/support/Menu;->POS_X:I

    iget v4, p0, Lcom/android/support/Menu;->POS_Y:I

    const v6, 0x2800108

    const/4 v7, -0x2

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    .line 386
    iget-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 387
    iget-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/support/Menu;->POS_X:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 388
    iget-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/support/Menu;->POS_Y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 390
    iget-object v0, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    .line 391
    iget-object v0, p0, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    return-void
.end method

.method public SetWindowManagerWindowService()V
    .locals 7

    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d2

    :goto_0
    move v4, v0

    .line 355
    .local v4, "iparams":I
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const v5, 0x4000008

    const/4 v6, -0x3

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v1, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    .line 362
    iget-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 363
    iget-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/support/Menu;->POS_X:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 364
    iget-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/support/Menu;->POS_Y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 366
    iget-object v0, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    .line 367
    iget-object v0, p0, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/support/Menu;->overlayRequired:Z

    .line 370
    return-void
.end method

.method native SettingsList()[Ljava/lang/String;
.end method

.method public ShowMenu()V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 328
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 329
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/support/Menu$6;

    invoke-direct {v1, p0, v0}, Lcom/android/support/Menu$6;-><init>(Lcom/android/support/Menu;Landroid/os/Handler;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1147
    iget-object v0, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1150
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "view"    # I

    .line 1141
    iget-object v0, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1144
    :cond_0
    return-void
.end method
