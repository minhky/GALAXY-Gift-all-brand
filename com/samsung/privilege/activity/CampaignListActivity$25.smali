.class Lcom/samsung/privilege/activity/CampaignListActivity$25;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;->doMyPointClose(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

.field private final synthetic val$imagePopupMyPoint:Landroid/widget/ImageView;

.field private final synthetic val$layoutButton:Landroid/widget/LinearLayout;

.field private final synthetic val$layoutPopupMyPoint:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$25;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$25;->val$layoutPopupMyPoint:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$25;->val$imagePopupMyPoint:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$25;->val$layoutButton:Landroid/widget/LinearLayout;

    .line 2230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$25;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$25$1;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$25;->val$layoutPopupMyPoint:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$25;->val$imagePopupMyPoint:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/activity/CampaignListActivity$25$1;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$25;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2239
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2244
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$25;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$25$2;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$25;->val$layoutButton:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/CampaignListActivity$25$2;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$25;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2253
    return-void
.end method
