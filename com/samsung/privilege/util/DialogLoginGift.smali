.class public Lcom/samsung/privilege/util/DialogLoginGift;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static gDialog:Landroid/app/ProgressDialog;

.field private static gDialogLogin:Landroid/app/Dialog;

.field private static isRequestingOTP:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const-class v0, Lcom/samsung/privilege/util/DialogLoginGift;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    .line 336
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/privilege/util/DialogLoginGift;->isRequestingOTP:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GetProfileData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 13
    .param p0, "mode_login"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "activityContext"    # Landroid/content/Context;
    .param p3, "objHandler"    # Landroid/os/Handler;

    .prologue
    .line 1254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "api/profile/me/user?token="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1255
    .local v8, "url":Ljava/lang/String;
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GetProfileData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 1258
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1259
    .local v2, "startTime":J
    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$25;

    move-object v4, p3

    move-object v5, p2

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/privilege/util/DialogLoginGift$25;-><init>(JLandroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v8, v1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 1377
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/os/Handler;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static/range {p0 .. p6}, Lcom/samsung/privilege/util/DialogLoginGift;->doLoginDevice(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->gDialogLogin:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Landroid/os/Handler;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static/range {p0 .. p7}, Lcom/samsung/privilege/util/DialogLoginGift;->authBuzzebees(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/os/Handler;

    .prologue
    .line 78
    invoke-static {p0, p1, p2}, Lcom/samsung/privilege/util/DialogLoginGift;->showToast(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Landroid/app/ProgressDialog;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/samsung/privilege/util/DialogLoginGift;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 1
    .param p0, "x0"    # Landroid/app/ProgressDialog;

    .prologue
    .line 78
    sput-object p0, Lcom/samsung/privilege/util/DialogLoginGift;->gDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$600()Z
    .registers 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/samsung/privilege/util/DialogLoginGift;->isRequestingOTP:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 78
    sput-boolean p0, Lcom/samsung/privilege/util/DialogLoginGift;->isRequestingOTP:Z

    return p0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/Context;
    .param p4, "x4"    # Landroid/os/Handler;

    .prologue
    .line 78
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/util/DialogLoginGift;->processJsonAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Landroid/os/Handler;

    .prologue
    .line 78
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/privilege/util/DialogLoginGift;->GetProfileData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method private static authBuzzebees(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "token_facebook"    # Ljava/lang/String;
    .param p2, "activityContext"    # Landroid/content/Context;
    .param p3, "objHandler"    # Landroid/os/Handler;
    .param p4, "is_otp"    # Z
    .param p5, "otp_contact_number"    # Ljava/lang/String;
    .param p6, "otp_number"    # Ljava/lang/String;
    .param p7, "otp_refcode"    # Ljava/lang/String;

    .prologue
    .line 778
    :try_start_0
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->gDialog:Landroid/app/ProgressDialog;

    const v4, 0x102000b

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 779
    .local v8, "mMessageView":Landroid/widget/TextView;
    if-eqz v8, :cond_23

    .line 780
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {p2}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 781
    .local v7, "font":Landroid/graphics/Typeface;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 782
    invoke-static {p2}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_a8

    .line 788
    .end local v7    # "font":Landroid/graphics/Typeface;
    .end local v8    # "mMessageView":Landroid/widget/TextView;
    :cond_23
    :goto_23
    invoke-static {p2}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/bzbs/data/UserLogin;->SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "api/auth/login"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 791
    .local v10, "url":Ljava/lang/String;
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-static/range {p2 .. p7}, Lcom/samsung/privilege/util/DialogLoginGift;->getLoginParams(Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;

    move-result-object v9

    .line 795
    .local v9, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v1, "access_token"

    invoke-virtual {v9, v1, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "access_token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 800
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    const-string/jumbo v1, ""

    const v4, 0x7f09026f

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {p2, v1, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->gDialog:Landroid/app/ProgressDialog;

    .line 801
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 802
    .local v2, "startTime":J
    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$16;

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/privilege/util/DialogLoginGift$16;-><init>(JLjava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, p2, v10, v9, v1}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 843
    return-void

    .line 784
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "startTime":J
    .end local v9    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v10    # "url":Ljava/lang/String;
    :catch_a8
    move-exception v1

    goto/16 :goto_23
.end method

.method public static doCheckVersionNote(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "objHandler"    # Landroid/os/Handler;
    .param p2, "screen"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "402705486466922"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "api/auth/version"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 266
    .local v12, "url":Ljava/lang/String;
    const-string/jumbo v13, ""

    .line 268
    .local v13, "versionName":Ljava/lang/String;
    :try_start_26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v13, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_35} :catch_9d

    .line 272
    :goto_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "?client_version="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 274
    const-string/jumbo v1, ""

    const v4, 0x7f09026f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p0, v1, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->gDialog:Landroid/app/ProgressDialog;

    .line 275
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doCheckVersionNote="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 277
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 278
    .local v2, "startTime":J
    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$7;

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/samsung/privilege/util/DialogLoginGift$7;-><init>(JLandroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v12, v1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 334
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "startTime":J
    .end local v12    # "url":Ljava/lang/String;
    .end local v13    # "versionName":Ljava/lang/String;
    :goto_9c
    return-void

    .line 269
    .restart local v12    # "url":Ljava/lang/String;
    .restart local v13    # "versionName":Ljava/lang/String;
    :catch_9d
    move-exception v11

    .line 270
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t get versionName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    .line 332
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "url":Ljava/lang/String;
    .end local v13    # "versionName":Ljava/lang/String;
    :cond_bd
    const/4 v7, 0x0

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    move-object/from16 v4, p3

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v4 .. v10}, Lcom/samsung/privilege/util/DialogLoginGift;->doLoginDevice(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c
.end method

.method private static doLoginDevice(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "objHandler"    # Landroid/os/Handler;
    .param p3, "is_otp"    # Z
    .param p4, "otp_contact_number"    # Ljava/lang/String;
    .param p5, "otp_number"    # Ljava/lang/String;
    .param p6, "otp_refcode"    # Ljava/lang/String;

    .prologue
    .line 714
    const-string/jumbo v1, ""

    const v4, 0x7f09026f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {p1, v1, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->gDialog:Landroid/app/ProgressDialog;

    .line 717
    :try_start_12
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->gDialog:Landroid/app/ProgressDialog;

    const v4, 0x102000b

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 718
    .local v8, "mMessageView":Landroid/widget/TextView;
    if-eqz v8, :cond_35

    .line 719
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 720
    .local v7, "font":Landroid/graphics/Typeface;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 721
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_35} :catch_89

    .line 727
    .end local v7    # "font":Landroid/graphics/Typeface;
    .end local v8    # "mMessageView":Landroid/widget/TextView;
    :cond_35
    :goto_35
    invoke-static {p1}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bzbs/data/UserLogin;->SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "api/auth/device_login"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 730
    .local v9, "url":Ljava/lang/String;
    sget-object v1, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 733
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 734
    .local v2, "startTime":J
    invoke-static/range {p1 .. p6}, Lcom/samsung/privilege/util/DialogLoginGift;->getLoginParams(Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;

    move-result-object v10

    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$15;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/privilege/util/DialogLoginGift$15;-><init>(JLjava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, p1, v9, v10, v1}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 773
    return-void

    .line 723
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "startTime":J
    .end local v9    # "url":Ljava/lang/String;
    :catch_89
    move-exception v1

    goto :goto_35
.end method

.method public static doRequestOTP(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 29
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "objHandler"    # Landroid/os/Handler;
    .param p2, "screen"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->LOGIN_OTP(Landroid/content/Context;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_ec

    .line 339
    new-instance v18, Landroid/app/Dialog;

    const v2, 0x1030010

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 341
    .local v18, "dialogOtp":Landroid/app/Dialog;
    const v2, 0x7f040110

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 343
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/privilege/util/DialogLoginGift;->isRequestingOTP:Z

    .line 345
    const v2, 0x7f10058b

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 346
    .local v22, "textOtpHeader":Landroid/widget/TextView;
    const v2, 0x7f10058c

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 347
    .local v3, "editOtpPhoneNumber":Landroid/widget/EditText;
    const v2, 0x7f10058e

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 348
    .local v23, "textOtpRequest":Landroid/widget/TextView;
    const v2, 0x7f100591

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 349
    .local v10, "editOtpNumber":Landroid/widget/EditText;
    const v2, 0x7f100593

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 350
    .local v21, "textOtpCancel":Landroid/widget/TextView;
    const v2, 0x7f100595

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 352
    .local v24, "textOtpSubmit":Landroid/widget/TextView;
    const v2, 0x7f10058f

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 353
    .local v9, "textOtpRefCode":Landroid/widget/TextView;
    const v2, 0x7f100590

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 354
    .local v7, "layoutOtpNumber":Landroid/widget/RelativeLayout;
    const v2, 0x7f10058d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 355
    .local v6, "layoutOtpRequest":Landroid/widget/RelativeLayout;
    const v2, 0x7f100594

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 356
    .local v8, "layoutOtpSubmit":Landroid/widget/RelativeLayout;
    const v2, 0x7f100592

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 358
    .local v20, "layoutOtpCancel":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/samsung/privilege/util/DialogLoginGift$8;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v10}, Lcom/samsung/privilege/util/DialogLoginGift$8;-><init>(Landroid/widget/EditText;Landroid/content/Context;Landroid/os/Handler;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    new-instance v2, Lcom/samsung/privilege/util/DialogLoginGift$9;

    invoke-direct {v2, v6}, Lcom/samsung/privilege/util/DialogLoginGift$9;-><init>(Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 472
    new-instance v11, Lcom/samsung/privilege/util/DialogLoginGift$10;

    move-object v12, v9

    move-object v13, v10

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p3

    move-object/from16 v17, v3

    invoke-direct/range {v11 .. v18}, Lcom/samsung/privilege/util/DialogLoginGift$10;-><init>(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    new-instance v2, Lcom/samsung/privilege/util/DialogLoginGift$11;

    invoke-direct {v2, v8}, Lcom/samsung/privilege/util/DialogLoginGift$11;-><init>(Landroid/widget/RelativeLayout;)V

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 501
    new-instance v2, Lcom/samsung/privilege/util/DialogLoginGift$12;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/samsung/privilege/util/DialogLoginGift$12;-><init>(Landroid/app/Dialog;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v19

    .line 508
    .local v19, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x11

    move-object/from16 v0, v19

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 509
    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 511
    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->show()V

    .line 515
    .end local v3    # "editOtpPhoneNumber":Landroid/widget/EditText;
    .end local v6    # "layoutOtpRequest":Landroid/widget/RelativeLayout;
    .end local v7    # "layoutOtpNumber":Landroid/widget/RelativeLayout;
    .end local v8    # "layoutOtpSubmit":Landroid/widget/RelativeLayout;
    .end local v9    # "textOtpRefCode":Landroid/widget/TextView;
    .end local v10    # "editOtpNumber":Landroid/widget/EditText;
    .end local v18    # "dialogOtp":Landroid/app/Dialog;
    .end local v19    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v20    # "layoutOtpCancel":Landroid/widget/RelativeLayout;
    .end local v21    # "textOtpCancel":Landroid/widget/TextView;
    .end local v22    # "textOtpHeader":Landroid/widget/TextView;
    .end local v23    # "textOtpRequest":Landroid/widget/TextView;
    .end local v24    # "textOtpSubmit":Landroid/widget/TextView;
    :goto_eb
    return-void

    .line 513
    :cond_ec
    const/4 v14, 0x0

    const-string/jumbo v15, ""

    const-string/jumbo v16, ""

    const-string/jumbo v17, ""

    move-object/from16 v11, p3

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-static/range {v11 .. v17}, Lcom/samsung/privilege/util/DialogLoginGift;->doLoginDevice(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_eb
.end method

.method public static getLoginParams(Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;
    .registers 23
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "objHandler"    # Landroid/os/Handler;
    .param p2, "is_otp"    # Z
    .param p3, "otp_contact_number"    # Ljava/lang/String;
    .param p4, "otp_number"    # Ljava/lang/String;
    .param p5, "otp_refcode"    # Ljava/lang/String;

    .prologue
    .line 585
    new-instance v11, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v11}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 588
    .local v11, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v14, "app_id"

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "app_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string/jumbo v13, ""

    .line 595
    .local v13, "versionName":Ljava/lang/String;
    :try_start_2f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    iget-object v13, v14, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_3f} :catch_285

    .line 599
    :goto_3f
    const-string/jumbo v14, "client_version"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "client_version="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    new-instance v7, Lcom/bzbs/util/DeviceHelper;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 605
    .local v7, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    invoke-static {}, Lcheat/FoxCore;->ranImei()Ljava/lang/String;

    move-result-object v8

    .line 606
    .local v8, "device_id":Ljava/lang/String;
    const-string/jumbo v14, "uuid"

    invoke-virtual {v11, v14, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "uuid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/bzbs/data/UserLogin;->SetUserUUID(Landroid/content/Context;Ljava/lang/String;)Z

    .line 612
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 613
    .local v1, "AndroidVersion":Ljava/lang/String;
    const-string/jumbo v14, "os"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "android "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "os=android "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "samsung"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "GT-I9100"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 620
    .local v12, "platform":Ljava/lang/String;
    const-string/jumbo v14, "platform"

    invoke-virtual {v11, v14, v12}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "platform="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string/jumbo v14, "sponsorId"

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sponsorId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {v7}, Lcom/bzbs/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v4

    .line 631
    .local v4, "android_id":Ljava/lang/String;
    const-string/jumbo v14, "mac_address"

    invoke-virtual {v11, v14, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mac_address="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-static/range {p0 .. p0}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 637
    .local v5, "carrier":Ljava/lang/String;
    const-string/jumbo v14, "carrier"

    invoke-virtual {v11, v14, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "carrier="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z

    .line 642
    const/4 v14, 0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_2a5

    .line 644
    const-string/jumbo v14, "contact_number"

    move-object/from16 v0, p3

    invoke-virtual {v11, v14, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "contact_number="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string/jumbo v14, "otp"

    move-object/from16 v0, p4

    invoke-virtual {v11, v14, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "otp="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string/jumbo v14, "refcode"

    move-object/from16 v0, p5

    invoke-virtual {v11, v14, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "refcode="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p5

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :goto_1fa
    const-string/jumbo v14, "transfer_points"

    const-string/jumbo v15, "manual"

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "transfer_points=manual"

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string/jumbo v14, "imei"

    invoke-virtual {v7}, Lcom/bzbs/util/DeviceHelper;->getRealDeviceId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "imei="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Lcom/bzbs/util/DeviceHelper;->getRealDeviceId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :try_start_232
    invoke-static/range {p0 .. p0}, Lcom/bzbs/util/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/bzbs/util/AdvertisingIdClient$AdInfo;

    move-result-object v2

    .line 695
    .local v2, "adInfo":Lcom/bzbs/util/AdvertisingIdClient$AdInfo;
    invoke-virtual {v2}, Lcom/bzbs/util/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 696
    .local v3, "advertisingId":Ljava/lang/String;
    const-string/jumbo v14, "advertising_id"

    invoke-virtual {v11, v14, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "advertising_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_259
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_259} :catch_2ca

    .line 705
    .end local v2    # "adInfo":Lcom/bzbs/util/AdvertisingIdClient$AdInfo;
    .end local v3    # "advertisingId":Ljava/lang/String;
    :goto_259
    invoke-static {}, Lcom/bzbs/util/RootUtil;->isDeviceRooted()Z

    move-result v9

    .line 706
    .local v9, "device_rooted":Z
    const-string/jumbo v14, "device_rooted"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "device_rooted="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    return-object v11

    .line 596
    .end local v1    # "AndroidVersion":Ljava/lang/String;
    .end local v4    # "android_id":Ljava/lang/String;
    .end local v5    # "carrier":Ljava/lang/String;
    .end local v7    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v8    # "device_id":Ljava/lang/String;
    .end local v9    # "device_rooted":Z
    .end local v12    # "platform":Ljava/lang/String;
    :catch_285
    move-exception v10

    .line 597
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Can\'t get versionName:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 655
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "AndroidVersion":Ljava/lang/String;
    .restart local v4    # "android_id":Ljava/lang/String;
    .restart local v5    # "carrier":Ljava/lang/String;
    .restart local v7    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .restart local v8    # "device_id":Ljava/lang/String;
    .restart local v12    # "platform":Ljava/lang/String;
    :cond_2a5
    invoke-virtual {v7}, Lcom/bzbs/util/DeviceHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    .line 656
    .local v6, "contact_number":Ljava/lang/String;
    const-string/jumbo v14, "contact_number"

    invoke-virtual {v11, v14, v6}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "contact_number="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1fa

    .line 698
    .end local v6    # "contact_number":Ljava/lang/String;
    :catch_2ca
    move-exception v10

    .line 699
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "advertising_id"

    const-string/jumbo v15, ""

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    sget-object v14, Lcom/samsung/privilege/util/DialogLoginGift;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "advertising_id="

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_259
.end method

.method private static processJsonAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 11
    .param p0, "response_text"    # Ljava/lang/String;
    .param p1, "mode_login"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "activityContext"    # Landroid/content/Context;
    .param p4, "objHandler"    # Landroid/os/Handler;

    .prologue
    .line 846
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$17;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$17;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1008
    return-void
.end method

.method public static showDialogCompleteProfileStep1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 52
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "mode_login"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "objHandler"    # Landroid/os/Handler;
    .param p4, "profile_fname"    # Ljava/lang/String;
    .param p5, "profile_lname"    # Ljava/lang/String;
    .param p6, "profile_birthdate"    # J
    .param p8, "profile_gender"    # Ljava/lang/String;
    .param p9, "profile_region"    # Ljava/lang/String;
    .param p10, "profile_mobile"    # Ljava/lang/String;
    .param p11, "profile_purchase"    # J
    .param p13, "profile_email"    # Ljava/lang/String;
    .param p14, "profile_income"    # Ljava/lang/String;
    .param p15, "profile_interest"    # Ljava/lang/String;

    .prologue
    .line 1380
    move-object/from16 v6, p0

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_4a3

    .line 1381
    invoke-static/range {p0 .. p0}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 1383
    new-instance v20, Landroid/app/Dialog;

    const v6, 0x1030010

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1384
    .local v20, "dialogCompleteProfile":Landroid/app/Dialog;
    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1386
    const v6, 0x7f040113

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 1388
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "fonts/kit55p.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v21

    .line 1389
    .local v21, "fontDefault":Landroid/graphics/Typeface;
    const v6, 0x7f100189

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1390
    const v6, 0x7f10018a

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1391
    const v6, 0x7f10018b

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1392
    const v6, 0x7f10018c

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1393
    const v6, 0x7f10018d

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1394
    const v6, 0x7f10018e

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1395
    const v6, 0x7f10018f

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1397
    const v6, 0x7f10059c

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 1398
    .local v22, "imageChangeLanguage":Landroid/widget/ImageView;
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1033"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a4

    .line 1399
    const v6, 0x7f02028e

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1404
    :goto_c2
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetIsCompleteProfileRequire(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_db

    .line 1405
    const v6, 0x7f1005a0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    .line 1406
    .local v29, "layoutRootRequire":Landroid/widget/LinearLayout;
    const/16 v6, 0x8

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1409
    .end local v29    # "layoutRootRequire":Landroid/widget/LinearLayout;
    :cond_db
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "dd/MM/yyyy"

    invoke-static/range {p0 .. p0}, Lcom/bzbs/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1411
    .local v17, "dateFormatter":Ljava/text/SimpleDateFormat;
    const-string/jumbo v6, "2"

    move-object/from16 v0, p1

    if-ne v0, v6, :cond_f0

    .line 1427
    :cond_f0
    const v6, 0x7f1005a2

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1428
    const v6, 0x7f1001ad

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1429
    const-wide/16 v6, 0x0

    cmp-long v6, p6, v6

    if-lez v6, :cond_4ae

    .line 1430
    const v6, 0x7f1001b5

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long v8, v8, p6

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1435
    :goto_133
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "female"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4cf

    .line 1436
    const v6, 0x7f1001b2

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1440
    :cond_157
    :goto_157
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "northern"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f5

    .line 1441
    const v6, 0x7f1001b9

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902ef

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1453
    :cond_17b
    :goto_17b
    const v6, 0x7f1001b7

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    move-object/from16 v0, p10

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1454
    const-wide/16 v6, 0x0

    cmp-long v6, p11, v6

    if-lez v6, :cond_1ae

    .line 1455
    const v6, 0x7f1001bc

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long v8, v8, p11

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    :cond_1ae
    const v6, 0x7f100184

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    move-object/from16 v0, p13

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    const-string/jumbo v6, "15000"

    move-object/from16 v0, p14

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b3

    .line 1459
    const v6, 0x7f100187

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902de

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1469
    :cond_1e0
    :goto_1e0
    const-string/jumbo v6, "Restaurant"

    move-object/from16 v0, p15

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1fa

    .line 1470
    const v6, 0x7f100189

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1472
    :cond_1fa
    const-string/jumbo v6, "Dessert"

    move-object/from16 v0, p15

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_214

    .line 1473
    const v6, 0x7f10018a

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1475
    :cond_214
    const-string/jumbo v6, "Entertainment"

    move-object/from16 v0, p15

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_22e

    .line 1476
    const v6, 0x7f10018b

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1478
    :cond_22e
    const-string/jumbo v6, "Beauty"

    move-object/from16 v0, p15

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_248

    .line 1479
    const v6, 0x7f10018c

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1481
    :cond_248
    const-string/jumbo v6, "Fashion"

    move-object/from16 v0, p15

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_262

    .line 1482
    const v6, 0x7f10018d

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1484
    :cond_262
    const-string/jumbo v6, "Sport"

    move-object/from16 v0, p15

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_27c

    .line 1485
    const v6, 0x7f10018e

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1487
    :cond_27c
    const-string/jumbo v6, "Travel"

    move-object/from16 v0, p15

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_296

    .line 1488
    const v6, 0x7f10018f

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1491
    :cond_296
    const v6, 0x7f10059b

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/RelativeLayout;

    .line 1492
    .local v28, "layoutChangeLanguage":Landroid/widget/RelativeLayout;
    new-instance v6, Lcom/samsung/privilege/util/DialogLoginGift$26;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/privilege/util/DialogLoginGift$26;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/app/Dialog;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1510
    const v6, 0x7f1001b5

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 1511
    .local v31, "textBirthday":Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v30

    .line 1512
    .local v30, "newCalendar":Ljava/util/Calendar;
    new-instance v4, Landroid/app/DatePickerDialog;

    new-instance v6, Lcom/samsung/privilege/util/DialogLoginGift$27;

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Lcom/samsung/privilege/util/DialogLoginGift$27;-><init>(Landroid/widget/TextView;Ljava/text/SimpleDateFormat;)V

    const/4 v7, 0x1

    .line 1518
    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1521
    .local v4, "datePickerDialogBirthday":Landroid/app/DatePickerDialog;
    new-instance v6, Lcom/samsung/privilege/util/DialogLoginGift$28;

    move-object/from16 v0, v31

    invoke-direct {v6, v0, v4}, Lcom/samsung/privilege/util/DialogLoginGift$28;-><init>(Landroid/widget/TextView;Landroid/app/DatePickerDialog;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1530
    const v6, 0x7f1001bc

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 1532
    .local v34, "textPurchase":Landroid/widget/TextView;
    new-instance v5, Landroid/app/DatePickerDialog;

    new-instance v7, Lcom/samsung/privilege/util/DialogLoginGift$29;

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lcom/samsung/privilege/util/DialogLoginGift$29;-><init>(Landroid/widget/TextView;Ljava/text/SimpleDateFormat;)V

    const/4 v6, 0x1

    .line 1538
    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v6, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v6, 0x5

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1541
    .local v5, "datePickerDialogPurchase":Landroid/app/DatePickerDialog;
    new-instance v6, Lcom/samsung/privilege/util/DialogLoginGift$30;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v6, v0, v1}, Lcom/samsung/privilege/util/DialogLoginGift$30;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1550
    const v6, 0x7f1001b2

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 1551
    .local v32, "textGender":Landroid/widget/TextView;
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v6, 0x0

    const v7, 0x7f0902d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v23, v6

    const/4 v6, 0x1

    const v7, 0x7f0902d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v23, v6

    .line 1552
    .local v23, "itemsGender":[Ljava/lang/String;
    new-instance v14, Landroid/widget/ArrayAdapter;

    const v6, 0x7f04015e

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v14, v0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1554
    .local v14, "adapterGender":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v6, Lcom/samsung/privilege/util/DialogLoginGift$31;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v23

    invoke-direct {v6, v0, v14, v1, v2}, Lcom/samsung/privilege/util/DialogLoginGift$31;-><init>(Landroid/content/Context;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1567
    const v6, 0x7f1001b9

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 1568
    .local v35, "textRegion":Landroid/widget/TextView;
    const/4 v6, 0x6

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v6, 0x0

    const v7, 0x7f0902ef

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v25, v6

    const/4 v6, 0x1

    const v7, 0x7f0902ee

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v25, v6

    const/4 v6, 0x2

    const v7, 0x7f0902ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v25, v6

    const/4 v6, 0x3

    const v7, 0x7f0902ed

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v25, v6

    const/4 v6, 0x4

    const v7, 0x7f0902f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v25, v6

    const/4 v6, 0x5

    const v7, 0x7f0902f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v25, v6

    .line 1569
    .local v25, "itemsRegion":[Ljava/lang/String;
    new-instance v16, Landroid/widget/ArrayAdapter;

    const v6, 0x7f04015e

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1571
    .local v16, "adapterRegion":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v6, Lcom/samsung/privilege/util/DialogLoginGift$32;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v35

    move-object/from16 v3, v25

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift$32;-><init>(Landroid/content/Context;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1584
    const v6, 0x7f100187

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 1585
    .local v33, "textIncomeLevel":Landroid/widget/TextView;
    const/4 v6, 0x5

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v6, 0x0

    const v7, 0x7f0902de

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v24, v6

    const/4 v6, 0x1

    const v7, 0x7f0902df

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v24, v6

    const/4 v6, 0x2

    const v7, 0x7f0902e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v24, v6

    const/4 v6, 0x3

    const v7, 0x7f0902e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v24, v6

    const/4 v6, 0x4

    const v7, 0x7f0902e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v24, v6

    .line 1586
    .local v24, "itemsIncome":[Ljava/lang/String;
    new-instance v15, Landroid/widget/ArrayAdapter;

    const v6, 0x7f04015e

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v15, v0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1587
    .local v15, "adapterIncome":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v6, Lcom/samsung/privilege/util/DialogLoginGift$33;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-direct {v6, v0, v15, v1, v2}, Lcom/samsung/privilege/util/DialogLoginGift$33;-><init>(Landroid/content/Context;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1600
    const v6, 0x7f100596

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/RelativeLayout;

    .line 1601
    .local v27, "layoutButtonComplete":Landroid/widget/RelativeLayout;
    new-instance v6, Lcom/samsung/privilege/util/DialogLoginGift$34;

    move-object/from16 v7, p0

    move-object/from16 v8, v20

    move-object/from16 v9, p3

    move-object/from16 v10, p13

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/privilege/util/DialogLoginGift$34;-><init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1881
    const v6, 0x7f100598

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout;

    .line 1882
    .local v26, "layoutButtonCancel":Landroid/widget/RelativeLayout;
    new-instance v6, Lcom/samsung/privilege/util/DialogLoginGift$35;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Lcom/samsung/privilege/util/DialogLoginGift$35;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1906
    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 1907
    .local v13, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x11

    iput v6, v13, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1908
    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1910
    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->show()V

    .line 1912
    .end local v4    # "datePickerDialogBirthday":Landroid/app/DatePickerDialog;
    .end local v5    # "datePickerDialogPurchase":Landroid/app/DatePickerDialog;
    .end local v13    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "adapterGender":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v15    # "adapterIncome":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v16    # "adapterRegion":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v17    # "dateFormatter":Ljava/text/SimpleDateFormat;
    .end local v20    # "dialogCompleteProfile":Landroid/app/Dialog;
    .end local v21    # "fontDefault":Landroid/graphics/Typeface;
    .end local v22    # "imageChangeLanguage":Landroid/widget/ImageView;
    .end local v23    # "itemsGender":[Ljava/lang/String;
    .end local v24    # "itemsIncome":[Ljava/lang/String;
    .end local v25    # "itemsRegion":[Ljava/lang/String;
    .end local v26    # "layoutButtonCancel":Landroid/widget/RelativeLayout;
    .end local v27    # "layoutButtonComplete":Landroid/widget/RelativeLayout;
    .end local v28    # "layoutChangeLanguage":Landroid/widget/RelativeLayout;
    .end local v30    # "newCalendar":Ljava/util/Calendar;
    .end local v31    # "textBirthday":Landroid/widget/TextView;
    .end local v32    # "textGender":Landroid/widget/TextView;
    .end local v33    # "textIncomeLevel":Landroid/widget/TextView;
    .end local v34    # "textPurchase":Landroid/widget/TextView;
    .end local v35    # "textRegion":Landroid/widget/TextView;
    :cond_4a3
    return-void

    .line 1401
    .restart local v20    # "dialogCompleteProfile":Landroid/app/Dialog;
    .restart local v21    # "fontDefault":Landroid/graphics/Typeface;
    .restart local v22    # "imageChangeLanguage":Landroid/widget/ImageView;
    :cond_4a4
    const v6, 0x7f02028d

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c2

    .line 1432
    .restart local v17    # "dateFormatter":Ljava/text/SimpleDateFormat;
    :cond_4ae
    const-wide/16 v18, 0x0

    .line 1433
    .local v18, "default_birthdate":J
    const v6, 0x7f1001b5

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long v8, v8, v18

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_133

    .line 1437
    .end local v18    # "default_birthdate":J
    :cond_4cf
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "male"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_157

    .line 1438
    const v6, 0x7f1001b2

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_157

    .line 1442
    :cond_4f5
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "northeastern"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51b

    .line 1443
    const v6, 0x7f1001b9

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902ee

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17b

    .line 1444
    :cond_51b
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "central"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_541

    .line 1445
    const v6, 0x7f1001b9

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17b

    .line 1446
    :cond_541
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "eastern"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_567

    .line 1447
    const v6, 0x7f1001b9

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902ed

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17b

    .line 1448
    :cond_567
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "western"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58d

    .line 1449
    const v6, 0x7f1001b9

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17b

    .line 1450
    :cond_58d
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "southern"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17b

    .line 1451
    const v6, 0x7f1001b9

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17b

    .line 1460
    :cond_5b3
    const-string/jumbo v6, "25000"

    move-object/from16 v0, p14

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d7

    .line 1461
    const v6, 0x7f100187

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902df

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1e0

    .line 1462
    :cond_5d7
    const-string/jumbo v6, "35000"

    move-object/from16 v0, p14

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5fb

    .line 1463
    const v6, 0x7f100187

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1e0

    .line 1464
    :cond_5fb
    const-string/jumbo v6, "45000"

    move-object/from16 v0, p14

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61f

    .line 1465
    const v6, 0x7f100187

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1e0

    .line 1466
    :cond_61f
    const-string/jumbo v6, "45001-"

    move-object/from16 v0, p14

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e0

    .line 1467
    const v6, 0x7f100187

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1e0
.end method

.method public static showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 17
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "is_auto_login_fb"    # Z
    .param p3, "mode_login"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "objHandler"    # Landroid/os/Handler;

    .prologue
    .line 1011
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_76

    .line 1012
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1014
    .local v1, "dialogConfirm":Landroid/app/Dialog;
    const v0, 0x7f040109

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1016
    const v0, 0x7f100152

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1017
    .local v9, "tvMessage":Landroid/widget/TextView;
    const v0, 0x7f100559

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1018
    .local v8, "imgOk":Landroid/widget/ImageView;
    const v0, 0x7f100534

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1019
    .local v10, "tvOk":Landroid/widget/TextView;
    const v0, 0x7f10055a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1021
    .local v7, "imgNo":Landroid/widget/ImageView;
    invoke-virtual {v9, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4b

    .line 1024
    const v0, 0x7f09031c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    :cond_4b
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$18;

    invoke-direct {v0, v1, v8, p0, p2}, Lcom/samsung/privilege/util/DialogLoginGift$18;-><init>(Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$19;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$19;-><init>(Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1049
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 1050
    .local v6, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x11

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1051
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1053
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1055
    .end local v1    # "dialogConfirm":Landroid/app/Dialog;
    .end local v6    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "imgNo":Landroid/widget/ImageView;
    .end local v8    # "imgOk":Landroid/widget/ImageView;
    .end local v9    # "tvMessage":Landroid/widget/TextView;
    .end local v10    # "tvOk":Landroid/widget/TextView;
    :cond_76
    return-void
.end method

.method public static showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "objHandler"    # Landroid/os/Handler;
    .param p2, "callbackManager"    # Lcom/facebook/CallbackManager;
    .param p3, "screen"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 83
    new-instance v0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    invoke-direct {v0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;-><init>()V

    .line 84
    invoke-virtual {v0, p0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->with(Landroid/content/Context;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v2}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->isRequired(Z)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    const-string/jumbo v1, "PERMISSION READ_PHONE_STATE Denied"

    .line 86
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->denyPermission(Ljava/lang/String;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    .line 87
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->permissions([Ljava/lang/String;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v6

    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$1;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v6, v0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->callback(Lcom/samsung/privilege/util/AddOnPermissions;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->build()Lcom/samsung/privilege/util/RxPermissionUtils;

    .line 99
    return-void
.end method

.method public static showDialogLoginAfterCheckPermission(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "objHandler"    # Landroid/os/Handler;
    .param p2, "callbackManager"    # Lcom/facebook/CallbackManager;
    .param p3, "screen"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    .line 103
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_22

    .line 104
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 105
    .local v10, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_23

    .line 106
    const v2, 0x7f09024b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    .end local v10    # "cm":Landroid/net/ConnectivityManager;
    :cond_22
    :goto_22
    return-void

    .line 110
    .restart local v10    # "cm":Landroid/net/ConnectivityManager;
    :cond_23
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v2

    if-nez v2, :cond_35

    .line 111
    const v2, 0x7f09036e

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_22

    .line 115
    :cond_35
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 116
    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 120
    :try_start_3b
    sget-object v2, Lcom/samsung/privilege/util/DialogLoginGift;->gDialogLogin:Landroid/app/Dialog;

    if-eqz v2, :cond_44

    .line 121
    sget-object v2, Lcom/samsung/privilege/util/DialogLoginGift;->gDialogLogin:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_44} :catch_14a

    .line 126
    :cond_44
    :goto_44
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f0d00fb

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/samsung/privilege/util/DialogLoginGift;->gDialogLogin:Landroid/app/Dialog;

    .line 128
    sget-object v2, Lcom/samsung/privilege/util/DialogLoginGift;->gDialogLogin:Landroid/app/Dialog;

    const v3, 0x7f040108

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 130
    sget-object v2, Lcom/samsung/privilege/util/DialogLoginGift;->gDialogLogin:Landroid/app/Dialog;

    const v3, 0x7f100165

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 132
    .local v7, "button_login_device":Landroid/widget/ImageButton;
    sget-object v2, Lcom/samsung/privilege/util/DialogLoginGift;->gDialogLogin:Landroid/app/Dialog;

    const v3, 0x7f100168

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/facebook/login/widget/LoginButton;

    .line 133
    .local v13, "objFacebookLoginButton":Lcom/facebook/login/widget/LoginButton;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13, v2, v3, v4, v5}, Lcom/facebook/login/widget/LoginButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 134
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "public_profile"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "user_friends"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/facebook/login/widget/LoginButton;->setReadPermissions(Ljava/util/List;)V

    .line 136
    sget-object v2, Lcom/samsung/privilege/util/DialogLoginGift;->gDialogLogin:Landroid/app/Dialog;

    const v3, 0x7f100557

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 137
    .local v9, "button_login_facebook_term":Landroid/widget/ImageButton;
    sget-object v2, Lcom/samsung/privilege/util/DialogLoginGift;->gDialogLogin:Landroid/app/Dialog;

    const v3, 0x7f100166

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 138
    .local v12, "layout_login_button_facebook":Landroid/widget/RelativeLayout;
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "402705486466922"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_144

    .line 139
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1054"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 140
    const v2, 0x7f020099

    invoke-virtual {v7, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 141
    const v2, 0x7f02009b

    invoke-virtual {v9, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 142
    const v2, 0x7f02009b

    invoke-virtual {v13, v2}, Lcom/facebook/login/widget/LoginButton;->setBackgroundResource(I)V

    .line 145
    :cond_cb
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetIsAcceptTerm(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_132

    .line 146
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 147
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 163
    :goto_db
    new-instance v2, Lcom/samsung/privilege/util/DialogLoginGift$3;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/privilege/util/DialogLoginGift$3;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageButton;)V

    invoke-virtual {v7, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/DialogLoginGift$4;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-direct {v3, v0, p0, p1, v1}, Lcom/samsung/privilege/util/DialogLoginGift$4;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 222
    sget-object v2, Lcom/samsung/privilege/util/DialogLoginGift;->gDialogLogin:Landroid/app/Dialog;

    const v3, 0x7f100558

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 223
    .local v11, "layoutCloseRoot":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/samsung/privilege/util/DialogLoginGift$5;

    invoke-direct {v2}, Lcom/samsung/privilege/util/DialogLoginGift$5;-><init>()V

    invoke-virtual {v11, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    sget-object v2, Lcom/samsung/privilege/util/DialogLoginGift;->gDialogLogin:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 230
    .local v8, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x11

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 231
    sget-object v2, Lcom/samsung/privilege/util/DialogLoginGift;->gDialogLogin:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 233
    sget-object v2, Lcom/samsung/privilege/util/DialogLoginGift;->gDialogLogin:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 235
    const-string/jumbo v2, "Login Page"

    invoke-static {v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsScreen(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 149
    .end local v8    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "layoutCloseRoot":Landroid/widget/RelativeLayout;
    :cond_132
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 150
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    new-instance v2, Lcom/samsung/privilege/util/DialogLoginGift$2;

    invoke-direct {v2, p0, v13}, Lcom/samsung/privilege/util/DialogLoginGift$2;-><init>(Landroid/content/Context;Lcom/facebook/login/widget/LoginButton;)V

    invoke-virtual {v9, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_db

    .line 160
    :cond_144
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_db

    .line 123
    .end local v7    # "button_login_device":Landroid/widget/ImageButton;
    .end local v9    # "button_login_facebook_term":Landroid/widget/ImageButton;
    .end local v12    # "layout_login_button_facebook":Landroid/widget/RelativeLayout;
    .end local v13    # "objFacebookLoginButton":Lcom/facebook/login/widget/LoginButton;
    :catch_14a
    move-exception v2

    goto/16 :goto_44
.end method

.method public static showDialogMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 14
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "mode_login"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "objHandler"    # Landroid/os/Handler;

    .prologue
    .line 1227
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 1228
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1230
    .local v1, "dialog":Landroid/app/Dialog;
    const v0, 0x7f04010b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1232
    const v0, 0x7f100152

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1234
    .local v8, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    const v0, 0x7f100156

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1237
    .local v7, "layoutClose":Landroid/widget/RelativeLayout;
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$24;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$24;-><init>(Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1245
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 1246
    .local v6, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x11

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1247
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1249
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1251
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v6    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "layoutClose":Landroid/widget/RelativeLayout;
    .end local v8    # "tvMessage":Landroid/widget/TextView;
    :cond_4e
    return-void
.end method

.method public static showDialogPointTransfer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 15
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "mode_login"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "objHandler"    # Landroid/os/Handler;

    .prologue
    .line 1058
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_63

    .line 1059
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1061
    .local v1, "dialogPoint":Landroid/app/Dialog;
    const v0, 0x7f040112

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1063
    const v0, 0x7f100152

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1065
    .local v9, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v9, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    const v0, 0x7f100533

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 1068
    .local v8, "layoutOk":Landroid/widget/RelativeLayout;
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$20;

    move-object v2, p4

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$20;-><init>(Landroid/app/Dialog;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    const v0, 0x7f10055e

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1089
    .local v7, "layoutNo":Landroid/widget/RelativeLayout;
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$21;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$21;-><init>(Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1097
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 1098
    .local v6, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x11

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1099
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1101
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1103
    .end local v1    # "dialogPoint":Landroid/app/Dialog;
    .end local v6    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "layoutNo":Landroid/widget/RelativeLayout;
    .end local v8    # "layoutOk":Landroid/widget/RelativeLayout;
    .end local v9    # "tvMessage":Landroid/widget/TextView;
    :cond_63
    return-void
.end method

.method public static showDialogPointTransferConfirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 16
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "mode_login"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "objHandler"    # Landroid/os/Handler;

    .prologue
    .line 1106
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_90

    .line 1107
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1109
    .local v1, "dialogPoint":Landroid/app/Dialog;
    const v0, 0x7f040112

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1111
    const v0, 0x7f100152

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1112
    .local v9, "tvMessage":Landroid/widget/TextView;
    const v0, 0x7f100534

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1113
    .local v11, "tvOk":Landroid/widget/TextView;
    const v0, 0x7f10055b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1115
    .local v10, "tvNo":Landroid/widget/TextView;
    const v0, 0x7f09032b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    const v0, 0x7f09031a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    const v0, 0x7f090325

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    const v0, 0x7f100533

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 1120
    .local v8, "layoutOk":Landroid/widget/RelativeLayout;
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$22;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$22;-><init>(Landroid/app/Dialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    const v0, 0x7f10055e

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1171
    .local v7, "layoutNo":Landroid/widget/RelativeLayout;
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$23;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift$23;-><init>(Landroid/app/Dialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1218
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 1219
    .local v6, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x11

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1220
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1222
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1224
    .end local v1    # "dialogPoint":Landroid/app/Dialog;
    .end local v6    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "layoutNo":Landroid/widget/RelativeLayout;
    .end local v8    # "layoutOk":Landroid/widget/RelativeLayout;
    .end local v9    # "tvMessage":Landroid/widget/TextView;
    .end local v10    # "tvNo":Landroid/widget/TextView;
    .end local v11    # "tvOk":Landroid/widget/TextView;
    :cond_90
    return-void
.end method

.method public static showDialogTerm(Landroid/content/Context;Landroid/widget/ImageButton;Lcom/facebook/login/widget/LoginButton;)V
    .registers 16
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "button_login_device"    # Landroid/widget/ImageButton;
    .param p2, "objFacebookLoginButton"    # Lcom/facebook/login/widget/LoginButton;

    .prologue
    .line 518
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_99

    .line 519
    new-instance v8, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {v8, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 520
    .local v8, "dialogTerm":Landroid/app/Dialog;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 521
    const v1, 0x7f040120

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 523
    const v1, 0x7f1001cd

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 524
    .local v0, "webView1":Landroid/webkit/WebView;
    const v1, 0x7f1005da

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 525
    .local v10, "imgCancel":Landroid/widget/ImageView;
    const v1, 0x7f1005db

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 528
    .local v9, "imgAccept":Landroid/widget/ImageView;
    :try_start_36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 529
    .local v12, "res":Landroid/content/res/Resources;
    const v1, 0x7f080003

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    .line 531
    .local v11, "in_s":Ljava/io/InputStream;
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v7, v1, [B

    .line 532
    .local v7, "b":[B
    invoke-virtual {v11, v7}, Ljava/io/InputStream;->read([B)I

    .line 536
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 537
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 538
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 541
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_73} :catch_9a

    .line 546
    .end local v7    # "b":[B
    .end local v11    # "in_s":Ljava/io/InputStream;
    .end local v12    # "res":Landroid/content/res/Resources;
    :goto_73
    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$13;

    invoke-direct {v1, v8}, Lcom/samsung/privilege/util/DialogLoginGift$13;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    new-instance v1, Lcom/samsung/privilege/util/DialogLoginGift$14;

    invoke-direct {v1, v8, p0, p1, p2}, Lcom/samsung/privilege/util/DialogLoginGift$14;-><init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/widget/ImageButton;Lcom/facebook/login/widget/LoginButton;)V

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 577
    .local v6, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 578
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 580
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 582
    .end local v0    # "webView1":Landroid/webkit/WebView;
    .end local v6    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "dialogTerm":Landroid/app/Dialog;
    .end local v9    # "imgAccept":Landroid/widget/ImageView;
    .end local v10    # "imgCancel":Landroid/widget/ImageView;
    :cond_99
    return-void

    .line 542
    .restart local v0    # "webView1":Landroid/webkit/WebView;
    .restart local v8    # "dialogTerm":Landroid/app/Dialog;
    .restart local v9    # "imgAccept":Landroid/widget/ImageView;
    .restart local v10    # "imgCancel":Landroid/widget/ImageView;
    :catch_9a
    move-exception v1

    goto :goto_73
.end method

.method private static showToast(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "objHandler"    # Landroid/os/Handler;

    .prologue
    .line 253
    new-instance v0, Lcom/samsung/privilege/util/DialogLoginGift$6;

    invoke-direct {v0, p1, p0}, Lcom/samsung/privilege/util/DialogLoginGift$6;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method
