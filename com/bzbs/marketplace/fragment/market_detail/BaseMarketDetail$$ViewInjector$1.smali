.class Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BaseMarketDetail$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

.field final synthetic b:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V
    .registers 3

    .prologue
    .line 18
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector;

    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$$ViewInjector$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-virtual {v0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->sendLike(Landroid/view/View;)V

    .line 23
    return-void
.end method
