.class Landroid/support/v7/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$CheckedItemAdapter;,
        Landroid/support/v7/app/AlertController$AlertParams;,
        Landroid/support/v7/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialog:Landroid/support/v7/app/AppCompatDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/support/v4/widget/NestedScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/AppCompatDialog;Landroid/view/Window;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/support/v7/app/AppCompatDialog;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 93
    iput v4, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 103
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    .line 112
    iput v4, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    .line 116
    new-instance v1, Landroid/support/v7/app/AlertController$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertController$1;-><init>(Landroid/support/v7/app/AlertController;)V

    iput-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 167
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    .line 169
    iput-object p3, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    .line 170
    new-instance v1, Landroid/support/v7/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Landroid/support/v7/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 172
    const/4 v1, 0x0

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v3, Landroid/support/v7/appcompat/R$attr;->alertDialogStyle:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_android_layout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    .line 176
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    .line 178
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mListLayout:I

    .line 179
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    .line 180
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    .line 182
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mListItemLayout:I

    .line 184
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v7/app/AlertController;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/support/v7/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/support/v7/app/AlertController;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$1200(Landroid/support/v7/app/AlertController;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v7/app/AlertController;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1400(Landroid/support/v7/app/AlertController;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1502(Landroid/support/v7/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1602(Landroid/support/v7/app/AlertController;I)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$200(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/app/AlertController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Landroid/support/v7/app/AlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/app/AlertController;)Landroid/support/v4/widget/NestedScrollView;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    return-object v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .registers 6
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 206
    :goto_8
    return v2

    .line 192
    :cond_9
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_f

    move v2, v3

    .line 193
    goto :goto_8

    :cond_f
    move-object v1, p0

    .line 196
    check-cast v1, Landroid/view/ViewGroup;

    .line 197
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 198
    .local v0, "i":I
    :cond_16
    if-lez v0, :cond_25

    .line 199
    add-int/lit8 v0, v0, -0x1

    .line 200
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 201
    invoke-static {p0}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_8

    :cond_25
    move v2, v3

    .line 206
    goto :goto_8
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 703
    if-eqz p1, :cond_f

    .line 704
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 707
    :cond_f
    if-eqz p2, :cond_1b

    .line 708
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    :goto_18
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 711
    :cond_1b
    return-void

    :cond_1c
    move v0, v2

    .line 704
    goto :goto_c

    :cond_1e
    move v1, v2

    .line 708
    goto :goto_18
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 5
    .param p1, "customPanel"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "defaultPanel"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 417
    if-nez p1, :cond_10

    .line 419
    instance-of v1, p2, Landroid/view/ViewStub;

    if-eqz v1, :cond_c

    .line 420
    check-cast p2, Landroid/view/ViewStub;

    .end local p2    # "defaultPanel":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_c
    move-object v1, p2

    .line 423
    check-cast v1, Landroid/view/ViewGroup;

    .line 439
    :goto_f
    return-object v1

    .line 427
    :cond_10
    if-eqz p2, :cond_1f

    .line 428
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 429
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1f

    .line 430
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 435
    :cond_1f
    instance-of v1, p1, Landroid/view/ViewStub;

    if-eqz v1, :cond_29

    .line 436
    check-cast p1, Landroid/view/ViewStub;

    .end local p1    # "customPanel":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .restart local p1    # "customPanel":Landroid/view/View;
    :cond_29
    move-object v1, p1

    .line 439
    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_f
.end method

.method private selectContentView()I
    .registers 3

    .prologue
    .line 218
    iget v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_7

    .line 219
    iget v0, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    .line 224
    :goto_6
    return v0

    .line 221
    :cond_7
    iget v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 222
    iget v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    goto :goto_6

    .line 224
    :cond_f
    iget v0, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    goto :goto_6
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .registers 11
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;
    .param p2, "content"    # Landroid/view/View;
    .param p3, "indicators"    # I
    .param p4, "mask"    # I

    .prologue
    .line 515
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Landroid/support/v7/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 516
    .local v2, "indicatorUp":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Landroid/support/v7/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 518
    .local v1, "indicatorDown":Landroid/view/View;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_24

    .line 520
    invoke-static {p2, p3, p4}, Landroid/support/v4/view/ViewCompat;->setScrollIndicators(Landroid/view/View;II)V

    .line 522
    if-eqz v2, :cond_1e

    .line 523
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 525
    :cond_1e
    if-eqz v1, :cond_23

    .line 526
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 591
    :cond_23
    :goto_23
    return-void

    .line 530
    :cond_24
    if-eqz v2, :cond_2e

    and-int/lit8 v4, p3, 0x1

    if-nez v4, :cond_2e

    .line 531
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 532
    const/4 v2, 0x0

    .line 534
    :cond_2e
    if-eqz v1, :cond_38

    and-int/lit8 v4, p3, 0x2

    if-nez v4, :cond_38

    .line 535
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 536
    const/4 v1, 0x0

    .line 539
    :cond_38
    if-nez v2, :cond_3c

    if-eqz v1, :cond_23

    .line 540
    :cond_3c
    move-object v3, v2

    .line 541
    .local v3, "top":Landroid/view/View;
    move-object v0, v1

    .line 543
    .local v0, "bottom":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_57

    .line 545
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance v5, Landroid/support/v7/app/AlertController$2;

    invoke-direct {v5, p0, v3, v0}, Landroid/support/v7/app/AlertController$2;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 555
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance v5, Landroid/support/v7/app/AlertController$3;

    invoke-direct {v5, p0, v3, v0}, Landroid/support/v7/app/AlertController$3;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_23

    .line 561
    :cond_57
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_70

    .line 563
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/support/v7/app/AlertController$4;

    invoke-direct {v5, p0, v3, v0}, Landroid/support/v7/app/AlertController$4;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 574
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/support/v7/app/AlertController$5;

    invoke-direct {v5, p0, v3, v0}, Landroid/support/v7/app/AlertController$5;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_23

    .line 582
    :cond_70
    if-eqz v3, :cond_75

    .line 583
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 585
    :cond_75
    if-eqz v0, :cond_23

    .line 586
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_23
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .registers 10
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 714
    const/4 v2, 0x1

    .line 715
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 716
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 717
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v4, 0x0

    .line 718
    .local v4, "whichButtons":I
    const v5, 0x1020019

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 719
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 722
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 729
    :goto_26
    const v5, 0x102001a

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 730
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 733
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 741
    :goto_45
    const v5, 0x102001b

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 742
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 745
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 753
    :goto_64
    if-eqz v4, :cond_67

    const/4 v3, 0x1

    .line 754
    .local v3, "hasButtons":Z
    :cond_67
    if-nez v3, :cond_6c

    .line 755
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 757
    :cond_6c
    return-void

    .line 724
    .end local v3    # "hasButtons":Z
    :cond_6d
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 726
    or-int/2addr v4, v2

    goto :goto_26

    .line 735
    :cond_7b
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 738
    or-int/2addr v4, v0

    goto :goto_45

    .line 747
    :cond_89
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 750
    or-int/2addr v4, v1

    goto :goto_64
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .registers 9
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 674
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Landroid/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/NestedScrollView;

    iput-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 675
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v2, v5}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    .line 676
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v2, v5}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 679
    const v2, 0x102000b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 680
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v2, :cond_2a

    .line 700
    :goto_29
    return-void

    .line 684
    :cond_2a
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_36

    .line 685
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29

    .line 687
    :cond_36
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    .line 690
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_62

    .line 691
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v2}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 692
    .local v1, "scrollParent":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 693
    .local v0, "childIndex":I
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 694
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_29

    .line 697
    .end local v0    # "childIndex":I
    .end local v1    # "scrollParent":Landroid/view/ViewGroup;
    :cond_62
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_29
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .registers 10
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v5, 0x20000

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 595
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_4b

    .line 596
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 604
    .local v1, "customView":Landroid/view/View;
    :goto_a
    if-eqz v1, :cond_d

    const/4 v2, 0x1

    .line 605
    .local v2, "hasCustomView":Z
    :cond_d
    if-eqz v2, :cond_15

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 606
    :cond_15
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 610
    :cond_1a
    if-eqz v2, :cond_5e

    .line 611
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Landroid/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 612
    .local v0, "custom":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    iget-boolean v4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v4, :cond_3d

    .line 615
    iget v4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    iget v5, p0, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    iget v6, p0, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    iget v7, p0, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 619
    :cond_3d
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_4a

    .line 620
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 625
    .end local v0    # "custom":Landroid/widget/FrameLayout;
    :cond_4a
    :goto_4a
    return-void

    .line 597
    .end local v1    # "customView":Landroid/view/View;
    .end local v2    # "hasCustomView":Z
    :cond_4b
    iget v4, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    if-eqz v4, :cond_5c

    .line 598
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 599
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 600
    .restart local v1    # "customView":Landroid/view/View;
    goto :goto_a

    .line 601
    .end local v1    # "customView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_5c
    const/4 v1, 0x0

    .restart local v1    # "customView":Landroid/view/View;
    goto :goto_a

    .line 623
    .restart local v2    # "hasCustomView":Z
    :cond_5e
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4a
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .registers 11
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0x8

    .line 628
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v3, :cond_1f

    .line 630
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 633
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 636
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 637
    .local v2, "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 671
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Landroid/view/View;
    :goto_1e
    return-void

    .line 639
    :cond_1f
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 641
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    const/4 v0, 0x1

    .line 642
    .local v0, "hasTextTitle":Z
    :cond_35
    if-eqz v0, :cond_85

    .line 644
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Landroid/support/v7/appcompat/R$id;->alertTitle:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 645
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget v3, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    if-eqz v3, :cond_56

    .line 651
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v4, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1e

    .line 652
    :cond_56
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_62

    .line 653
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    .line 657
    :cond_62
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 661
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1e

    .line 665
    :cond_85
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 666
    .restart local v2    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 667
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 668
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1e
.end method

.method private setupView()V
    .registers 25

    .prologue
    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v22, v0

    sget v23, Landroid/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 444
    .local v19, "parentPanel":Landroid/view/View;
    sget v22, Landroid/support/v7/appcompat/R$id;->topPanel:I

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 445
    .local v13, "defaultTopPanel":Landroid/view/View;
    sget v22, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 446
    .local v12, "defaultContentPanel":Landroid/view/View;
    sget v22, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 450
    .local v11, "defaultButtonPanel":Landroid/view/View;
    sget v22, Landroid/support/v7/appcompat/R$id;->customPanel:I

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 451
    .local v9, "customPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/support/v7/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 453
    sget v22, Landroid/support/v7/appcompat/R$id;->topPanel:I

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 454
    .local v10, "customTopPanel":Landroid/view/View;
    sget v22, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 455
    .local v8, "customContentPanel":Landroid/view/View;
    sget v22, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 458
    .local v7, "customButtonPanel":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v21

    .line 459
    .local v21, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 460
    .local v6, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 462
    .local v3, "buttonPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/support/v7/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 463
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 464
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 466
    if-eqz v9, :cond_12d

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_12d

    const/4 v15, 0x1

    .line 468
    .local v15, "hasCustomPanel":Z
    :goto_85
    if-eqz v21, :cond_130

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_130

    const/16 v16, 0x1

    .line 470
    .local v16, "hasTopPanel":Z
    :goto_95
    if-eqz v3, :cond_134

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_134

    const/4 v14, 0x1

    .line 474
    .local v14, "hasButtonPanel":Z
    :goto_a4
    if-nez v14, :cond_bb

    .line 475
    if-eqz v6, :cond_bb

    .line 476
    sget v22, Landroid/support/v7/appcompat/R$id;->textSpacerNoButtons:I

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 477
    .local v20, "spacer":Landroid/view/View;
    if-eqz v20, :cond_bb

    .line 478
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 483
    .end local v20    # "spacer":Landroid/view/View;
    :cond_bb
    if-eqz v16, :cond_d0

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d0

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    .line 491
    :cond_d0
    if-nez v15, :cond_f7

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_137

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 493
    .local v5, "content":Landroid/view/View;
    :goto_de
    if-eqz v5, :cond_f7

    .line 494
    if-eqz v16, :cond_13c

    const/16 v22, 0x1

    move/from16 v23, v22

    :goto_e6
    if-eqz v14, :cond_141

    const/16 v22, 0x2

    :goto_ea
    or-int v17, v23, v22

    .line 496
    .local v17, "indicators":I
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v6, v5, v1, v2}, Landroid/support/v7/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 501
    .end local v5    # "content":Landroid/view/View;
    .end local v17    # "indicators":I
    :cond_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    .line 502
    .local v18, "listView":Landroid/widget/ListView;
    if-eqz v18, :cond_12c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_12c

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 504
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    .line 505
    .local v4, "checkedItem":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v4, v0, :cond_12c

    .line 506
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 507
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 510
    .end local v4    # "checkedItem":I
    :cond_12c
    return-void

    .line 466
    .end local v14    # "hasButtonPanel":Z
    .end local v15    # "hasCustomPanel":Z
    .end local v16    # "hasTopPanel":Z
    .end local v18    # "listView":Landroid/widget/ListView;
    :cond_12d
    const/4 v15, 0x0

    goto/16 :goto_85

    .line 468
    .restart local v15    # "hasCustomPanel":Z
    :cond_130
    const/16 v16, 0x0

    goto/16 :goto_95

    .line 470
    .restart local v16    # "hasTopPanel":Z
    :cond_134
    const/4 v14, 0x0

    goto/16 :goto_a4

    .line 492
    .restart local v14    # "hasButtonPanel":Z
    :cond_137
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    goto :goto_de

    .line 494
    .restart local v5    # "content":Landroid/view/View;
    :cond_13c
    const/16 v22, 0x0

    move/from16 v23, v22

    goto :goto_e6

    :cond_141
    const/16 v22, 0x0

    goto :goto_ea
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 3
    .param p1, "whichButton"    # I

    .prologue
    .line 384
    packed-switch p1, :pswitch_data_e

    .line 392
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 386
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_4

    .line 388
    :pswitch_8
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_4

    .line 390
    :pswitch_b
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_4

    .line 384
    :pswitch_data_e
    .packed-switch -0x3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .registers 5
    .param p1, "attrId"    # I

    .prologue
    .line 374
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 375
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 376
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .registers 4

    .prologue
    .line 211
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 212
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->selectContentView()I

    move-result v0

    .line 213
    .local v0, "contentView":I
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(I)V

    .line 214
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->setupView()V

    .line 215
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 7
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 302
    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    .line 303
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 306
    :cond_a
    packed-switch p1, :pswitch_data_26

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :pswitch_16
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 310
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 326
    :goto_1a
    return-void

    .line 314
    :pswitch_1b
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 315
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_1a

    .line 319
    :pswitch_20
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 320
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_1a

    .line 306
    nop

    :pswitch_data_26
    .packed-switch -0x3
        :pswitch_20
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .registers 2
    .param p1, "layoutHint"    # I

    .prologue
    .line 284
    iput p1, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    .line 285
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 2
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 238
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 239
    return-void
.end method

.method public setIcon(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 336
    iput p1, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 338
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_18

    .line 339
    if-eqz p1, :cond_19

    .line 340
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 346
    :cond_18
    :goto_18
    return-void

    .line 343
    :cond_19
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 354
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 355
    iput v1, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 357
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    .line 358
    if-eqz p1, :cond_16

    .line 359
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :cond_15
    :goto_15
    return-void

    .line 362
    :cond_16
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 242
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 243
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 244
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_b
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 228
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 229
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 230
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_b
    return-void
.end method

.method public setView(I)V
    .registers 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 253
    iput p1, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 255
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 261
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 262
    iput v0, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 263
    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 264
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 271
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 274
    iput p2, p0, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    .line 275
    iput p3, p0, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    .line 276
    iput p4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    .line 277
    iput p5, p0, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    .line 278
    return-void
.end method
