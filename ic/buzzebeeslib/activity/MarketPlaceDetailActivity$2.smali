.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$2;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1000
    invoke-static {p1, p2}, Lic/buzzebeeslib/util/BBUtil;->IsSlideToDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1001
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowInfo:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$29(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1002
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->HideTabInfo()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$30(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    .line 1006
    :cond_1a
    return v2
.end method