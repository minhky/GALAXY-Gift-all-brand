.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MarketReviewOfReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteReviewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)V
    .registers 2

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    .registers 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1125
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1126
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->onSuccess(ILjava/lang/String;)V

    .line 1127
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(DeleteReviewListener|onComplete)response={"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_42

    .line 1105
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_43

    .line 1106
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener$1;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1115
    :goto_38
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener$2;-><init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1121
    :cond_42
    return-void

    .line 1112
    :cond_43
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    const-string v1, "Error while delete!"

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->showToast(Ljava/lang/String;)V

    goto :goto_38
.end method