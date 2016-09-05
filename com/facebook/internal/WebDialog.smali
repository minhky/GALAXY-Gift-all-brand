.class public Lcom/facebook/internal/WebDialog;
.super Landroid/app/Dialog;
.source "WebDialog.java"


# static fields
.field private static final API_EC_DIALOG_CANCEL:I = 0x1069

.field private static final BACKGROUND_GRAY:I = -0x34000000

.field static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field public static final DEFAULT_THEME:I = 0x1030010

.field static final DISABLE_SSL_CHECK_FOR_TESTING:Z = false

.field private static final DISPLAY_TOUCH:Ljava/lang/String; = "touch"

.field private static final LOG_TAG:Ljava/lang/String; = "FacebookSDK.WebDialog"

.field private static final MAX_PADDING_SCREEN_HEIGHT:I = 0x500

.field private static final MAX_PADDING_SCREEN_WIDTH:I = 0x320

.field private static final MIN_SCALE_FACTOR:D = 0.5

.field private static final NO_PADDING_SCREEN_HEIGHT:I = 0x320

.field private static final NO_PADDING_SCREEN_WIDTH:I = 0x1e0

.field static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"


# instance fields
.field private contentFrameLayout:Landroid/widget/FrameLayout;

.field private crossImageView:Landroid/widget/ImageView;

.field private expectedRedirectUrl:Ljava/lang/String;

.field private isDetached:Z

.field private isPageFinished:Z

.field private listenerCalled:Z

.field private onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

.field private spinner:Landroid/app/ProgressDialog;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 116
    const v0, 0x1030010

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/internal/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 128
    if-nez p3, :cond_6

    const p3, 0x1030010

    :cond_6
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 83
    const-string/jumbo v0, "fbconnect://success"

    iput-object v0, p0, Lcom/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    .line 89
    iput-boolean v1, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    .line 90
    iput-boolean v1, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    .line 91
    iput-boolean v1, p0, Lcom/facebook/internal/WebDialog;->isPageFinished:Z

    .line 129
    iput-object p2, p0, Lcom/facebook/internal/WebDialog;->url:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/WebDialog$OnCompleteListener;)V
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 142
    if-nez p4, :cond_6

    const p4, 0x1030010

    :cond_6
    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 83
    const-string/jumbo v0, "fbconnect://success"

    iput-object v0, p0, Lcom/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    .line 89
    iput-boolean v5, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    .line 90
    iput-boolean v5, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    .line 91
    iput-boolean v5, p0, Lcom/facebook/internal/WebDialog;->isPageFinished:Z

    .line 144
    if-nez p3, :cond_1b

    .line 145
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 149
    :cond_1b
    const-string/jumbo v0, "redirect_uri"

    const-string/jumbo v1, "fbconnect://success"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v0, "display"

    const-string/jumbo v1, "touch"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v0, "sdk"

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "android-%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 155
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getAPIVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "dialog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v0, v1, p3}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/WebDialog;->url:Ljava/lang/String;

    .line 162
    iput-object p5, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .line 163
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/WebDialog;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/internal/WebDialog;)Z
    .registers 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/internal/WebDialog;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/internal/WebDialog;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/internal/WebDialog;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/facebook/internal/WebDialog;Z)Z
    .registers 2

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/facebook/internal/WebDialog;->isPageFinished:Z

    return p1
.end method

.method private createCrossImage()V
    .registers 3

    .prologue
    .line 369
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    .line 371
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/internal/WebDialog$2;

    invoke-direct {v1, p0}, Lcom/facebook/internal/WebDialog$2;-><init>(Lcom/facebook/internal/WebDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$drawable;->com_facebook_close:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    return-void
.end method

.method private getScaledSize(IFII)I
    .registers 11

    .prologue
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 323
    int-to-float v2, p1

    div-float/2addr v2, p2

    float-to-int v2, v2

    .line 325
    if-gt v2, p3, :cond_d

    .line 326
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 337
    :cond_9
    :goto_9
    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    .line 327
    :cond_d
    if-ge v2, p4, :cond_9

    .line 332
    sub-int v2, p4, v2

    int-to-double v2, v2

    sub-int v4, p4, p3

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    add-double/2addr v0, v2

    goto :goto_9
.end method

.method private setUpWebView(I)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 387
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 388
    new-instance v1, Lcom/facebook/internal/WebDialog$3;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/internal/WebDialog$3;-><init>(Lcom/facebook/internal/WebDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    .line 400
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 401
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 402
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/internal/WebDialog$DialogWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/internal/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/internal/WebDialog;Lcom/facebook/internal/WebDialog$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 403
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 404
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/facebook/internal/WebDialog;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 408
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 409
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 410
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 411
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 412
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/internal/WebDialog$4;

    invoke-direct {v2, p0}, Lcom/facebook/internal/WebDialog$4;-><init>(Lcom/facebook/internal/WebDialog;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 423
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 424
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 426
    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 427
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_10

    .line 364
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    .line 366
    :cond_10
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_9

    .line 195
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 197
    :cond_9
    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    if-nez v0, :cond_1e

    .line 198
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 199
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 202
    :cond_1e
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 203
    return-void
.end method

.method public getOnCompleteListener()Lcom/facebook/internal/WebDialog$OnCompleteListener;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method protected getWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected isListenerCalled()Z
    .registers 2

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    return v0
.end method

.method protected isPageFinished()Z
    .registers 2

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->isPageFinished:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    .line 220
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 221
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 225
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 227
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    .line 228
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 229
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/R$string;->com_facebook_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/facebook/internal/WebDialog$1;

    invoke-direct {v1, p0}, Lcom/facebook/internal/WebDialog$1;-><init>(Lcom/facebook/internal/WebDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 237
    invoke-virtual {p0, v4}, Lcom/facebook/internal/WebDialog;->requestWindowFeature(I)Z

    .line 238
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    .line 241
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->resize()V

    .line 242
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 245
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 251
    invoke-direct {p0}, Lcom/facebook/internal/WebDialog;->createCrossImage()V

    .line 256
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 258
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/internal/WebDialog;->setUpWebView(I)V

    .line 263
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/internal/WebDialog;->setContentView(Landroid/view/View;)V

    .line 267
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/WebDialog;->isDetached:Z

    .line 214
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 215
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 185
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 186
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->cancel()V

    .line 189
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 208
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->resize()V

    .line 209
    return-void
.end method

.method protected parseResponseUri(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 274
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 277
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 279
    return-object v1
.end method

.method public resize()V
    .registers 7

    .prologue
    const/16 v5, 0x320

    .line 295
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 296
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 297
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 298
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 301
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_4f

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 302
    :goto_23
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v3, :cond_52

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 304
    :goto_2b
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x1e0

    .line 305
    invoke-direct {p0, v0, v3, v4, v5}, Lcom/facebook/internal/WebDialog;->getScaledSize(IFII)I

    move-result v0

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 304
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 307
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x500

    .line 308
    invoke-direct {p0, v1, v3, v5, v4}, Lcom/facebook/internal/WebDialog;->getScaledSize(IFII)I

    move-result v1

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 307
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 311
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 312
    return-void

    .line 301
    :cond_4f
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_23

    .line 302
    :cond_52
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2b
.end method

.method protected sendErrorToListener(Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 349
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_1a

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    .line 352
    instance-of v0, p1, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_1b

    .line 353
    check-cast p1, Lcom/facebook/FacebookException;

    .line 357
    :goto_11
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/facebook/internal/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 358
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->dismiss()V

    .line 360
    :cond_1a
    return-void

    .line 355
    :cond_1b
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_11
.end method

.method protected sendSuccessToListener(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_14

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/WebDialog;->listenerCalled:Z

    .line 343
    iget-object v0, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/internal/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 344
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog;->dismiss()V

    .line 346
    :cond_14
    return-void
.end method

.method protected setExpectedRedirectUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 270
    iput-object p1, p0, Lcom/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setOnCompleteListener(Lcom/facebook/internal/WebDialog$OnCompleteListener;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/facebook/internal/WebDialog;->onCompleteListener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .line 172
    return-void
.end method
