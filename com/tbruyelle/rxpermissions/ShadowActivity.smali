.class public Lcom/tbruyelle/rxpermissions/ShadowActivity;
.super Landroid/app/Activity;
.source "ShadowActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 26
    const-string/jumbo v0, "permissions"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 27
    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/tbruyelle/rxpermissions/ShadowActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    if-nez p1, :cond_c

    .line 16
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions/ShadowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tbruyelle/rxpermissions/ShadowActivity;->a(Landroid/content/Intent;)V

    .line 18
    :cond_c
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 33
    invoke-static {p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->b()V

    .line 34
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions/ShadowActivity;->a(Landroid/content/Intent;)V

    .line 23
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .prologue
    .line 38
    invoke-static {p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a(I[Ljava/lang/String;[I)V

    .line 39
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions/ShadowActivity;->finish()V

    .line 40
    return-void
.end method
