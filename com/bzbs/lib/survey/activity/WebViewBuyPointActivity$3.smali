.class Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewBuyPointActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$3;->this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity$3;->this$0:Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;->access$000(Lcom/bzbs/lib/survey/activity/WebViewBuyPointActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Oh no! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
