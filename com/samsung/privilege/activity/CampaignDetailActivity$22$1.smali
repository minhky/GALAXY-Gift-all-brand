.class Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

.field private final synthetic val$layoutGallery:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$22;Landroid/widget/RelativeLayout;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;->val$layoutGallery:Landroid/widget/RelativeLayout;

    .line 2851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$22;
    .registers 2

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$22;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    const-string v1, "GONE"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$46(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    .line 2856
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$22;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1$1;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;->val$layoutGallery:Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2876
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2881
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$22;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    const-string v1, "HIDING"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$46(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    .line 2886
    return-void
.end method