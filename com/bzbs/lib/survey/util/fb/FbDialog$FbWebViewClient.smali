.class Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "FbDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/util/fb/FbDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;


# direct methods
.method private constructor <init>(Lcom/bzbs/lib/survey/util/fb/FbDialog;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/lib/survey/util/fb/FbDialog;Lcom/bzbs/lib/survey/util/fb/FbDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/bzbs/lib/survey/util/fb/FbDialog;
    .param p2, "x1"    # Lcom/bzbs/lib/survey/util/fb/FbDialog$1;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;-><init>(Lcom/bzbs/lib/survey/util/fb/FbDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    # getter for: Lcom/bzbs/lib/survey/util/fb/FbDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->access$200(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 190
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    # getter for: Lcom/bzbs/lib/survey/util/fb/FbDialog;->mContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->access$300(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 191
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    # getter for: Lcom/bzbs/lib/survey/util/fb/FbDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->access$400(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    # getter for: Lcom/bzbs/lib/survey/util/fb/FbDialog;->mCrossImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->access$500(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 177
    const-string/jumbo v0, "Facebook-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/fb/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 179
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    # getter for: Lcom/bzbs/lib/survey/util/fb/FbDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->access$200(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 180
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    # getter for: Lcom/bzbs/lib/survey/util/fb/FbDialog;->mListener:Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->access$000(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;

    move-result-object v0

    new-instance v1, Lcom/bzbs/lib/survey/util/fb/DialogError;

    invoke-direct {v1, p3, p2, p4}, Lcom/bzbs/lib/survey/util/fb/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;->onError(Lcom/bzbs/lib/survey/util/fb/DialogError;)V

    .line 172
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->dismiss()V

    .line 173
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 134
    const-string/jumbo v3, "fbconnect://success"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 135
    invoke-static {p2}, Lcom/bzbs/lib/survey/util/fb/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 137
    .local v1, "values":Landroid/os/Bundle;
    const-string/jumbo v3, "error"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_1e

    .line 139
    const-string/jumbo v3, "error_type"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_1e
    if-nez v0, :cond_2f

    .line 143
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    # getter for: Lcom/bzbs/lib/survey/util/fb/FbDialog;->mListener:Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;
    invoke-static {v3}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->access$000(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 151
    :goto_29
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->dismiss()V

    .line 163
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "values":Landroid/os/Bundle;
    :goto_2e
    return v2

    .line 144
    .restart local v0    # "error":Ljava/lang/String;
    .restart local v1    # "values":Landroid/os/Bundle;
    :cond_2f
    const-string/jumbo v3, "access_denied"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string/jumbo v3, "OAuthAccessDeniedException"

    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 146
    :cond_41
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    # getter for: Lcom/bzbs/lib/survey/util/fb/FbDialog;->mListener:Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;
    invoke-static {v3}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->access$000(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;->onCancel()V

    goto :goto_29

    .line 148
    :cond_4b
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    # getter for: Lcom/bzbs/lib/survey/util/fb/FbDialog;->mListener:Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;
    invoke-static {v3}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->access$000(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;

    move-result-object v3

    new-instance v4, Lcom/bzbs/lib/survey/util/fb/FacebookError;

    invoke-direct {v4, v0}, Lcom/bzbs/lib/survey/util/fb/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;->onFacebookError(Lcom/bzbs/lib/survey/util/fb/FacebookError;)V

    goto :goto_29

    .line 153
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "values":Landroid/os/Bundle;
    :cond_5a
    const-string/jumbo v3, "fbconnect://cancel"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 154
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    # getter for: Lcom/bzbs/lib/survey/util/fb/FbDialog;->mListener:Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;
    invoke-static {v3}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->access$000(Lcom/bzbs/lib/survey/util/fb/FbDialog;)Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;->onCancel()V

    .line 155
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->dismiss()V

    goto :goto_2e

    .line 157
    :cond_72
    const-string/jumbo v3, "touch"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 158
    const/4 v2, 0x0

    goto :goto_2e

    .line 161
    :cond_7d
    iget-object v3, p0, Lcom/bzbs/lib/survey/util/fb/FbDialog$FbWebViewClient;->this$0:Lcom/bzbs/lib/survey/util/fb/FbDialog;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    .line 162
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2e
.end method