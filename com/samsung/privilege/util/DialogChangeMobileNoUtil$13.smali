.class final Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;
.super Lcom/bzbs/lib/http/okhttp/ResponseListener;
.source "DialogChangeMobileNoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Dialog;)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Landroid/widget/RelativeLayout;

.field final synthetic f:Landroid/widget/RelativeLayout;

.field final synthetic g:Landroid/widget/RelativeLayout;

.field final synthetic h:Landroid/widget/LinearLayout;

.field final synthetic i:Landroid/widget/LinearLayout;

.field final synthetic j:Landroid/widget/TextView;


# direct methods
.method constructor <init>(JLandroid/content/Context;Landroid/os/Handler;Landroid/widget/EditText;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .registers 13

    .prologue
    .line 371
    iput-wide p1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->a:J

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->d:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->e:Landroid/widget/RelativeLayout;

    iput-object p7, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->f:Landroid/widget/RelativeLayout;

    iput-object p8, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->g:Landroid/widget/RelativeLayout;

    iput-object p9, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->h:Landroid/widget/LinearLayout;

    iput-object p10, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->i:Landroid/widget/LinearLayout;

    iput-object p11, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->j:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/bzbs/lib/http/okhttp/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 418
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bzbs/lib/http/okhttp/ResponseListener;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V

    .line 421
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 422
    const-string/jumbo v2, "OTP"

    const-string/jumbo v3, "RequestOTP"

    const-string/jumbo v4, "Failure"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_5e

    .line 427
    :goto_1b
    invoke-static {}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(requestOTP|onFailure)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-static {}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 430
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->b:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$2;-><init>(Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 438
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Z)Z

    .line 439
    return-void

    .line 423
    :catch_5e
    move-exception v0

    goto :goto_1b
.end method

.method public successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 375
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 376
    const-string/jumbo v2, "OTP"

    const-string/jumbo v3, "RequestOTP"

    const-string/jumbo v4, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->a:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_60

    .line 381
    :goto_18
    invoke-static {}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(requestOTP|onComplete)response_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string/jumbo v0, "Request OTP success."

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 384
    invoke-static {}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 386
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13$1;-><init>(Lcom/samsung/privilege/util/DialogChangeMobileNoUtil$13;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 413
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Z)Z

    .line 414
    return-void

    .line 377
    :catch_60
    move-exception v0

    goto :goto_18
.end method
