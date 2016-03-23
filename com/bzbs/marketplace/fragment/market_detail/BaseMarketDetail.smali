.class public abstract Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "BaseMarketDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;
    }
.end annotation


# static fields
.field public static final KEY_LAYOUT:Ljava/lang/String; = "BaseMarketDetail::Layout"

.field public static formatter:Ljava/text/DecimalFormat;

.field public static formatterPercent:Ljava/text/DecimalFormat;


# instance fields
.field public RC_WEBVIEW_BUY_POINT:I

.field public RC_WEBVIEW_CUSTOMINPUT:I

.field public RC_WEBVIEW_SHOPPING_BASKET:I

.field asynctask:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;

.field contentCondition:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005e9
    .end annotation
.end field

.field contentDetail:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005e8
    .end annotation
.end field

.field public contentViewPager:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005ca
    .end annotation
.end field

.field public idCampaign:Ljava/lang/String;

.field public imageLike:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005cf
    .end annotation
.end field

.field public indicatorViewPager:Lme/relex/circleindicator/CircleIndicator;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005cb
    .end annotation
.end field

.field public itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

.field public itemMarketList:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

.field public layoutComment:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005cc
    .end annotation
.end field

.field public layoutLike:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005ce
    .end annotation
.end field

.field public layoutShared:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005d1
    .end annotation
.end field

.field public listPicture:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/detail/Picture;",
            ">;"
        }
    .end annotation
.end field

.field public marketPlaceViewPager:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceDetailImagePagerAdapter;

.field public paramCampaign:Lcom/bzbs/bean/CampaignView;

.field public textViewComment:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005cd
    .end annotation
.end field

.field textViewCondition:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005ec
    .end annotation
.end field

.field textViewDetail:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005eb
    .end annotation
.end field

.field public textViewLike:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005d0
    .end annotation
.end field

.field public textViewTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005d2
    .end annotation
.end field

.field vShadow:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005ea
    .end annotation
.end field

.field public viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10020b
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 62
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->formatter:Ljava/text/DecimalFormat;

    .line 63
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->formatterPercent:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseFragment;-><init>()V

    .line 96
    const/16 v0, 0xa

    iput v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->RC_WEBVIEW_CUSTOMINPUT:I

    .line 97
    const/16 v0, 0x15

    iput v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->RC_WEBVIEW_BUY_POINT:I

    .line 98
    const/16 v0, 0x19

    iput v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->RC_WEBVIEW_SHOPPING_BASKET:I

    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->loadProgress(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getDataBundle()V
    .registers 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ItemMarketPlace"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lorg/parceler/Parcels;->unwrap(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketList:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    .line 139
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketList:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->idCampaign:Ljava/lang/String;

    .line 140
    return-void
.end method

.method private loadProgress(Z)V
    .registers 4
    .param p1, "VISIBLE"    # Z

    .prologue
    .line 370
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    if-eqz v0, :cond_10

    .line 371
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    if-eqz p1, :cond_11

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->setProgressVisibility(I)V

    .line 373
    :cond_10
    return-void

    .line 371
    :cond_11
    const/16 v1, 0x8

    goto :goto_d
.end method


# virtual methods
.method public checkLike()V
    .registers 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isLike()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 314
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->imageLike:Landroid/widget/ImageView;

    const v1, 0x7f020296

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    :goto_10
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewLike:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPeopleLike()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    return-void

    .line 316
    :cond_37
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->imageLike:Landroid/widget/ImageView;

    const v1, 0x7f020299

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_10
.end method

.method protected createLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->setToolbarTitle(Ljava/lang/String;Z)V

    .line 122
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    sget v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->gScreenWidth:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v0, "param":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentViewPager:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->getDataBundle()V

    .line 126
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->setupWidgetBase()V

    .line 127
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->setViewPagerBase()V

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->createLayoutBase(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method protected abstract createLayoutBase(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected getLayoutResource()I
    .registers 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 115
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "BaseMarketDetail::Layout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loadData()V
    .registers 5

    .prologue
    .line 206
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->loadProgress(Z)V

    .line 207
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->idCampaign:Ljava/lang/String;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlMarketPlaceDetail(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "loadData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadData() called with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v1, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->idCampaign:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;->setCache(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->asynctask:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;

    .line 210
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->asynctask:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;

    new-instance v2, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;->excuteModel(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask$CallbackModel;)V

    .line 247
    return-void
.end method

.method public onClickComment(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1005cc
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 325
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-nez v3, :cond_6

    .line 354
    :cond_5
    :goto_5
    return-void

    .line 328
    :cond_6
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 329
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_24

    .line 330
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    const v4, 0x7f09024a

    invoke-virtual {p0, v4}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 334
    :cond_24
    const-string/jumbo v3, "BZB Campaign Details"

    const-string/jumbo v4, "Click Comment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v6}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "token":Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 341
    if-nez v2, :cond_7b

    .line 342
    new-instance v3, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;

    invoke-direct {v3, p0, v7}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;)V

    invoke-static {v3}, Lcom/bzbs/event/LoginEvents;->addLoginListener(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 343
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v3, v3, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v6, "BZB Campaign Details"

    const-string/jumbo v7, "market_like"

    invoke-static {v4, v5, v3, v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 345
    :cond_7b
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 346
    new-instance v3, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;

    invoke-direct {v3, p0, v7}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;)V

    invoke-static {v3}, Lcom/bzbs/event/LoginEvents;->addLoginListener(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 347
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v3, v3, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v6, "BZB Campaign Details"

    const-string/jumbo v7, "market_like"

    invoke-static {v4, v5, v3, v6, v7}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 351
    :cond_a1
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/bzbs/marketplace/activity/ReviewActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v3, "ReviewActivity::Data"

    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 364
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onDestroyView()V

    .line 365
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->asynctask:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;

    if-eqz v0, :cond_c

    .line 366
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->asynctask:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceDetailAsynctask;->onCancel()V

    .line 367
    :cond_c
    return-void
.end method

.method protected abstract onLoadFromUrl()V
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 358
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onResume()V

    .line 360
    return-void
.end method

.method public onSelectedTab(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1005e8,
            0x7f1005e9
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 164
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentCondition:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1005e8

    if-ne v0, v1, :cond_59

    .line 167
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 168
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->vShadow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 169
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewDetail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewCondition:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    const-string/jumbo v0, "BZB Campaign Details"

    const-string/jumbo v1, "Click Details"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_58
    :goto_58
    return-void

    .line 174
    :cond_59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1005e9

    if-ne v0, v1, :cond_58

    .line 175
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentCondition:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 176
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->vShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 177
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewDetail:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewCondition:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    const-string/jumbo v0, "BZB Campaign Details"

    const-string/jumbo v1, "Click Conditions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58
.end method

.method public sendLike(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1005ce
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 252
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-nez v4, :cond_6

    .line 308
    :cond_5
    :goto_5
    return-void

    .line 255
    :cond_6
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 258
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 259
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-nez v4, :cond_2a

    .line 260
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    const v5, 0x7f09024a

    invoke-virtual {p0, v5}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 264
    :cond_2a
    const-string/jumbo v4, "BZB Campaign Details"

    const-string/jumbo v5, "Click Like"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v7}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v7}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_cd

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cd

    .line 269
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlLikeMarketDetail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 272
    .local v1, "isLike":Z
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isLike()Z

    move-result v4

    if-nez v4, :cond_b4

    .line 273
    const/4 v1, 0x1

    .line 274
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v5}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPeopleLike()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setPeopleLike(Ljava/lang/String;)V

    .line 279
    :goto_97
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4, v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setIsLike(Z)V

    .line 281
    new-instance v5, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_ca

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->POST:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    :goto_a4
    invoke-direct {v5, v6, v3, v8, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v4, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$2;

    invoke-direct {v4, p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$2;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V

    invoke-virtual {v5, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->excute(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 303
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->checkLike()V

    goto/16 :goto_5

    .line 276
    :cond_b4
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v5}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPeopleLike()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->setPeopleLike(Ljava/lang/String;)V

    goto :goto_97

    .line 281
    :cond_ca
    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->DELETE:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    goto :goto_a4

    .line 305
    .end local v1    # "isLike":Z
    .end local v3    # "url":Ljava/lang/String;
    :cond_cd
    new-instance v4, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;

    invoke-direct {v4, p0, v8}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;)V

    invoke-static {v4}, Lcom/bzbs/event/LoginEvents;->addLoginListener(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 306
    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v4, v4, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v7, "BZB Campaign Details"

    const-string/jumbo v8, "market_like"

    invoke-static {v5, v6, v4, v7, v8}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method public setViewPagerBase()V
    .registers 5

    .prologue
    .line 185
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->listPicture:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 203
    :cond_4
    :goto_4
    return-void

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->indicatorViewPager:Lme/relex/circleindicator/CircleIndicator;

    if-eqz v0, :cond_4

    .line 192
    new-instance v0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceDetailImagePagerAdapter;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->listPicture:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceDetailImagePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->marketPlaceViewPager:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceDetailImagePagerAdapter;

    .line 194
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->marketPlaceViewPager:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceDetailImagePagerAdapter;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 195
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->setInterval(J)V

    .line 196
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->startAutoScroll()V

    .line 197
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->indicatorViewPager:Lme/relex/circleindicator/CircleIndicator;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    invoke-virtual {v0, v1}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 199
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->viewPager:Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    invoke-static {v0}, Lcom/bzbs/marketplace/util/ScrollViewPagerHorizontal;->setAutoScrollViewPager(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)V

    .line 201
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->listPicture:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 202
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->indicatorViewPager:Lme/relex/circleindicator/CircleIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lme/relex/circleindicator/CircleIndicator;->setVisibility(I)V

    goto :goto_4
.end method

.method public setupWidgetBase()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 143
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-nez v0, :cond_6

    .line 159
    :cond_5
    :goto_5
    return-void

    .line 146
    :cond_6
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewComment:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewDetail:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewCondition:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 149
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6a

    const-string/jumbo v0, ""

    :goto_23
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewComment:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getBuzz()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_71

    const-string/jumbo v0, ""

    :goto_33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewDetail:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDetail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9e

    const-string/jumbo v0, ""

    :goto_43
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->textViewCondition:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCondition()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a5

    const-string/jumbo v0, ""

    :goto_53
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 155
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->contentCondition:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 156
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->vShadow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->checkLike()V

    goto :goto_5

    .line 149
    :cond_6a
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 150
    :cond_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090262

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getBuzz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 151
    :cond_9e
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getDetail()Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 152
    :cond_a5
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCondition()Ljava/lang/String;

    move-result-object v0

    goto :goto_53
.end method