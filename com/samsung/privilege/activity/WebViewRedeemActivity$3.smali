.class Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewRedeemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WebViewRedeemActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    .line 112
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewRedeemActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->access$0(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebResourceResponse:url"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 12
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    # getter for: Lcom/samsung/privilege/activity/WebViewRedeemActivity;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->access$0(Lcom/samsung/privilege/activity/WebViewRedeemActivity;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "shouldOverrideUrlLoading|url := "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v3, "bzbs_cancel_url"

    .line 117
    .local v3, "url_cancel":Ljava/lang/String;
    const-string v4, "payment/bzbs_buy_return_url"

    .line 118
    .local v4, "url_return":Ljava/lang/String;
    const-string v5, "payment/bzbs_buy_return_url?result=success"

    .line 120
    .local v5, "url_return_done":Ljava/lang/String;
    if-eqz p2, :cond_58

    .line 121
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3c

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 122
    :cond_3c
    const-string v6, "content://someURI"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 123
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "bzbs_return_url"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v1}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->setResult(ILandroid/content/Intent;)V

    .line 126
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V

    .line 135
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_58
    :goto_58
    const/4 v6, 0x0

    return v6

    .line 127
    :cond_5a
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 128
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->finish()V

    goto :goto_58

    .line 129
    :cond_6e
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "tg=new"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_86

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "www.goprimetime.tv/app"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 130
    :cond_86
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewRedeemActivity$3;->this$0:Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-virtual {v6, v0}, Lcom/samsung/privilege/activity/WebViewRedeemActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_58
.end method