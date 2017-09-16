.class public Lcom/google/android/gms/signin/internal/zzg;
.super Lcom/google/android/gms/common/internal/zzj;

# interfaces
.implements Lcom/google/android/gms/internal/zzxp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/signin/internal/zze;",
        ">;",
        "Lcom/google/android/gms/internal/zzxp;"
    }
.end annotation


# instance fields
.field private final e:Z

.field private final f:Lcom/google/android/gms/common/internal/zzf;

.field private final g:Landroid/os/Bundle;

.field private h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/zzf;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 15

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-boolean p3, p0, Lcom/google/android/gms/signin/internal/zzg;->e:Z

    iput-object p4, p0, Lcom/google/android/gms/signin/internal/zzg;->f:Lcom/google/android/gms/common/internal/zzf;

    iput-object p5, p0, Lcom/google/android/gms/signin/internal/zzg;->g:Landroid/os/Bundle;

    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/zzf;->i()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/signin/internal/zzg;->h:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/internal/zzxq;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 16

    invoke-static {p4}, Lcom/google/android/gms/signin/internal/zzg;->a(Lcom/google/android/gms/common/internal/zzf;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/signin/internal/zzg;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/zzf;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/internal/zzf;)Landroid/os/Bundle;
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->h()Lcom/google/android/gms/internal/zzxq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->i()Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "com.google.android.gms.signin.internal.clientRequestedAccount"

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->a()Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_23

    const-string/jumbo v3, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_23
    if-eqz v0, :cond_90

    const-string/jumbo v1, "com.google.android.gms.signin.internal.offlineAccessRequested"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxq;->a()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxq;->b()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxq;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxq;->d()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxq;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxq;->f()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxq;->g()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7c

    const-string/jumbo v1, "com.google.android.gms.signin.internal.authApiSignInModuleVersion"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxq;->g()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_7c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxq;->h()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_90

    const-string/jumbo v1, "com.google.android.gms.signin.internal.realClientLibraryVersion"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxq;->h()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_90
    return-object v2
.end method

.method private w()Lcom/google/android/gms/common/internal/ResolveAccountRequest;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/zzg;->f:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->b()Landroid/accounts/Account;

    move-result-object v1

    const/4 v0, 0x0

    const-string/jumbo v2, "<<default account>>"

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zzg;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    :cond_1e
    new-instance v2, Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    iget-object v3, p0, Lcom/google/android/gms/signin/internal/zzg;->h:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/common/internal/ResolveAccountRequest;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-object v2
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/signin/internal/zzg;->b(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zze;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/internal/zzp;Z)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zzg;->t()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zze;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/zzg;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/signin/internal/zze;->a(Lcom/google/android/gms/common/internal/zzp;IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v0, "SignInClientImpl"

    const-string/jumbo v1, "Remote service probably died when saveDefaultAccount is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public a(Lcom/google/android/gms/signin/internal/zzd;)V
    .registers 5

    const-string/jumbo v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_6
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zzg;->w()Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zzg;->t()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zze;

    new-instance v2, Lcom/google/android/gms/signin/internal/SignInRequest;

    invoke-direct {v2, v1}, Lcom/google/android/gms/signin/internal/SignInRequest;-><init>(Lcom/google/android/gms/common/internal/ResolveAccountRequest;)V

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/signin/internal/zze;->a(Lcom/google/android/gms/signin/internal/SignInRequest;Lcom/google/android/gms/signin/internal/zzd;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    const-string/jumbo v1, "SignInClientImpl"

    const-string/jumbo v2, "Remote service probably died when signIn is called"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_23
    new-instance v1, Lcom/google/android/gms/signin/internal/SignInResponse;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/signin/internal/SignInResponse;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/signin/internal/zzd;->a(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2d} :catch_2e

    goto :goto_18

    :catch_2e
    move-exception v1

    const-string/jumbo v1, "SignInClientImpl"

    const-string/jumbo v2, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method protected b(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zze;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/signin/internal/zze$zza;->a(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zze;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/signin/internal/zzg;->e:Z

    return v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public k()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zzg;->t()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zze;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/zzg;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/signin/internal/zze;->a(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v0, "SignInClientImpl"

    const-string/jumbo v1, "Remote service probably died when clearAccountFromSessionStore is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public l()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/common/internal/zze$zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zze$zzi;-><init>(Lcom/google/android/gms/common/internal/zze;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/signin/internal/zzg;->a(Lcom/google/android/gms/common/internal/zze$zzf;)V

    return-void
.end method

.method protected q()Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/zzg;->f:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zzg;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/zzg;->g:Landroid/os/Bundle;

    const-string/jumbo v1, "com.google.android.gms.signin.internal.realClientPackageName"

    iget-object v2, p0, Lcom/google/android/gms/signin/internal/zzg;->f:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzf;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/zzg;->g:Landroid/os/Bundle;

    return-object v0
.end method
