.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$3;
.super Ljava/lang/Object;
.source "CampaignListPullToRefresh.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$3;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$3;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$20(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/CampaignView;

    .line 316
    .local v0, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    iget-object v2, v0, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v2, v0, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    iget-object v2, v0, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    .line 328
    :cond_26
    iget-object v2, v0, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    if-eqz v2, :cond_d4

    iget-object v2, v0, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    iget-object v2, v0, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    iget-object v2, v0, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    iget-object v2, v0, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    iget-object v2, v0, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 330
    :cond_5c
    iget-object v2, v0, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    const-string v3, "bzbs_campaign="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_af

    .line 331
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$3;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "campaign_id"

    iget-object v3, v0, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    const-string v4, "bzbs_campaign="

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 333
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$3;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$3;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->RC_CAMPAIGN_DETAIL:I
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$28(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_95} :catch_d2

    .line 349
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_95
    :goto_95
    :try_start_95
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$3;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$3;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->mCategoryName:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$9(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "View Redeem Detail"

    iget-object v5, v0, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_ae} :catch_f7

    .line 357
    .end local v0    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    :goto_ae
    return-void

    .line 335
    .restart local v0    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    :cond_af
    :try_start_af
    new-instance v1, Landroid/content/Intent;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gContext:Landroid/content/Context;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$29()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "campaign"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 337
    const-string v2, "ga_path"

    const-string v3, "glst"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$3;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$3;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->RC_CAMPAIGN_DETAIL:I
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$28(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_95

    .line 354
    .end local v0    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_d2
    move-exception v2

    goto :goto_ae

    .line 342
    .restart local v0    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    :cond_d4
    new-instance v1, Landroid/content/Intent;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gContext:Landroid/content/Context;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$29()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "campaign"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 344
    const-string v2, "ga_path"

    const-string v3, "glst"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$3;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$3;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->RC_CAMPAIGN_DETAIL:I
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$28(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_f6} :catch_d2

    goto :goto_95

    .line 350
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_f7
    move-exception v2

    goto :goto_ae
.end method