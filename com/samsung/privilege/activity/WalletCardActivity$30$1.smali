.class Lcom/samsung/privilege/activity/WalletCardActivity$30$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$30;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/WalletCardActivity$30;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$30;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2463
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$30;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2467
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bzbs/bean/QueueItem;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2469
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_51

    .line 2470
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/QueueItem;

    .line 2471
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$30;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$30;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->q(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 2472
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$30;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$30;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->q(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_51

    .line 2473
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$30;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$30;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->q(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->a(I)Lcom/bzbs/bean/Place;

    move-result-object v1

    iput-object v0, v1, Lcom/bzbs/bean/Place;->mQueueItem:Lcom/bzbs/bean/QueueItem;

    .line 2474
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$30$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$30;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$30;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->q(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;->notifyDataSetChanged()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_52

    .line 2481
    :cond_51
    :goto_51
    return-void

    .line 2478
    :catch_52
    move-exception v0

    goto :goto_51
.end method