.class Lcom/samsung/privilege/activity/WebViewActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewActivity;

    .line 80
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewActivity;->access$0(Lcom/samsung/privilege/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebResourceResponse:url"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/privilege/activity/WebViewActivity;->access$0(Lcom/samsung/privilege/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "shouldOverrideUrlLoading|url := "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "payment/bzbs_buy_return_url"

    .line 95
    .local v2, "url_return":Ljava/lang/String;
    const-string v3, "payment/bzbs_buy_return_url?result=success"

    .line 97
    .local v3, "url_return_done":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/privilege/activity/WebViewActivity;->access$0(Lcom/samsung/privilege/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "url_return := "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz p2, :cond_ec

    .line 100
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/privilege/activity/WebViewActivity;->access$0(Lcom/samsung/privilege/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "1 := "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "url.toLowerCase() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "url_return.toLowerCase() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/privilege/activity/WebViewActivity;->access$0(Lcom/samsung/privilege/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "2 := "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 104
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewActivity;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 107
    :cond_b4
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 108
    :cond_d0
    const-string v4, "content://someURI"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 109
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "bzbs_buy_return_url"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v0}, Lcom/samsung/privilege/activity/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 112
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/WebViewActivity;->finish()V

    .line 116
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_ec
    const/4 v4, 0x0

    return v4
.end method
