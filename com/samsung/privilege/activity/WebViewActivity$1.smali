.class Lcom/samsung/privilege/activity/WebViewActivity$1;
.super Landroid/webkit/WebChromeClient;
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/WebViewActivity$1;->this$0:Lcom/samsung/privilege/activity/WebViewActivity;

    .line 65
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewActivity$1;->this$0:Lcom/samsung/privilege/activity/WebViewActivity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/WebViewActivity;->setProgress(I)V

    .line 70
    return-void
.end method