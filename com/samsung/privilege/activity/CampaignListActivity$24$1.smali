.class Lcom/samsung/privilege/activity/CampaignListActivity$24$1;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity$24;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignListActivity$24;

.field private final synthetic val$layoutButton:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity$24;Landroid/widget/LinearLayout;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$24$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$24;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$24$1;->val$layoutButton:Landroid/widget/LinearLayout;

    .line 2196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$24$1;->val$layoutButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2199
    return-void
.end method
