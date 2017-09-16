.class public Lcom/google/android/gms/internal/zzrb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzre;


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzrf;

.field private final b:Ljava/util/concurrent/locks/Lock;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/common/zzc;

.field private e:Lcom/google/android/gms/common/ConnectionResult;

.field private f:I

.field private g:I

.field private h:I

.field private final i:Landroid/os/Bundle;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/android/gms/internal/zzxp;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Lcom/google/android/gms/common/internal/zzp;

.field private p:Z

.field private q:Z

.field private final r:Lcom/google/android/gms/common/internal/zzf;

.field private final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzxp;",
            "Lcom/google/android/gms/internal/zzxq;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrf;Lcom/google/android/gms/common/internal/zzf;Ljava/util/Map;Lcom/google/android/gms/common/zzc;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzrf;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/common/zzc;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzxp;",
            "Lcom/google/android/gms/internal/zzxq;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzrb;->g:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrb;->i:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrb;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrb;->u:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrb;->r:Lcom/google/android/gms/common/internal/zzf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrb;->s:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzrb;->d:Lcom/google/android/gms/common/zzc;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzrb;->t:Lcom/google/android/gms/common/api/Api$zza;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzrb;->b:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzrb;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzrb;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrb;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzrb;->b(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrb;->a(Lcom/google/android/gms/signin/internal/SignInResponse;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrb;->b(I)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->a()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->b()Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->b()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v2

    if-nez v2, :cond_51

    const-string/jumbo v0, "GoogleApiClientConnecting"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzrb;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_7

    :cond_51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzrb;->n:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->a()Lcom/google/android/gms/common/internal/zzp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrb;->o:Lcom/google/android/gms/common/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzrb;->p:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrb;->q:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->e()V

    goto :goto_7

    :cond_6a
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrb;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->h()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->e()V

    goto :goto_7

    :cond_77
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrb;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_7
.end method

.method private a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->k:Lcom/google/android/gms/internal/zzxp;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->k:Lcom/google/android/gms/internal/zzxp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzxp;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->k:Lcom/google/android/gms/internal/zzxp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzxp;->k()V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->k:Lcom/google/android/gms/internal/zzxp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzxp;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrb;->o:Lcom/google/android/gms/common/internal/zzp;

    :cond_1b
    return-void
.end method

.method private a(IILcom/google/android/gms/common/ConnectionResult;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p2, v1, :cond_b

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzrb;->a(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb;->e:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v2, :cond_13

    iget v2, p0, Lcom/google/android/gms/internal/zzrb;->f:I

    if-ge p1, v2, :cond_a

    :cond_13
    move v0, v1

    goto :goto_a
.end method

.method private a(Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb;->d:Lcom/google/android/gms/common/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/zzc;->b(I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzrb;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrb;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/common/zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->d:Lcom/google/android/gms/common/zzc;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p3, v0, :cond_15

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->a()Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api$zzd;->a()I

    move-result v0

    invoke-direct {p0, v0, p3, p1}, Lcom/google/android/gms/internal/zzrb;->a(IILcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_15

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrb;->e:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lcom/google/android/gms/internal/zzrb;->f:I

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->d()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(I)Z
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/zzrb;->g:I

    if-eq v0, p1, :cond_b4

    const-string/jumbo v0, "GoogleApiClientConnecting"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzrf;->g:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrd;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GoogleApiClientConnecting"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unexpected callback in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GoogleApiClientConnecting"

    iget v1, p0, Lcom/google/android/gms/internal/zzrb;->h:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "mRemainingConnections="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GoogleApiClientConnecting"

    iget v1, p0, Lcom/google/android/gms/internal/zzrb;->g:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzrb;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrb;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x46

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "GoogleApiClient connecting is in step "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " but received callback for step "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrb;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    :goto_b3
    return v0

    :cond_b4
    const/4 v0, 0x1

    goto :goto_b3
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzrb;->l:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/google/android/gms/internal/zzrb;->l:I

    if-ne v1, v0, :cond_11

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrb;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method private c(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_10

    const-string/jumbo v0, "UNKNOWN"

    :goto_6
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    goto :goto_6

    :pswitch_b
    const-string/jumbo v0, "STEP_GETTING_REMOTE_SERVICE"

    goto :goto_6

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/android/gms/internal/zzrb;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->b:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private c(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->i()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_a
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrb;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzrf;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->h:Lcom/google/android/gms/internal/zzrm$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzrm$zza;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic d(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/internal/zzrf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    return-object v0
.end method

.method private d()Z
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzrb;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzrb;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/zzrb;->h:I

    if-lez v1, :cond_c

    :goto_b
    return v0

    :cond_c
    iget v1, p0, Lcom/google/android/gms/internal/zzrb;->h:I

    if-gez v1, :cond_38

    const-string/jumbo v1, "GoogleApiClientConnecting"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzrf;->g:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzrd;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "GoogleApiClientConnecting"

    const-string/jumbo v2, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzrb;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_b

    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb;->e:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget v2, p0, Lcom/google/android/gms/internal/zzrb;->f:I

    iput v2, v1, Lcom/google/android/gms/internal/zzrf;->f:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzrb;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_b

    :cond_48
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private e()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzrb;->h:I

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrb;->m:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrb;->n:Z

    if-eqz v0, :cond_4

    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->f()V

    goto :goto_4
.end method

.method static synthetic e(Lcom/google/android/gms/internal/zzrb;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrb;->m:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/internal/zzxp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->k:Lcom/google/android/gms/internal/zzxp;

    return-object v0
.end method

.method private f()V
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzrb;->g:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzrb;->h:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzrf;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->d()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->g()V

    goto :goto_1e

    :cond_3e
    iget-object v3, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzrf;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_4c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->u:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzrg;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzrb$zzc;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/zzrb$zzc;-><init>(Lcom/google/android/gms/internal/zzrb;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    return-void
.end method

.method static synthetic g(Lcom/google/android/gms/internal/zzrb;)Ljava/util/Set;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->j()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->f()V

    invoke-static {}, Lcom/google/android/gms/internal/zzrg;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzrb$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzrb$1;-><init>(Lcom/google/android/gms/internal/zzrb;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->k:Lcom/google/android/gms/internal/zzxp;

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrb;->p:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->k:Lcom/google/android/gms/internal/zzxp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb;->o:Lcom/google/android/gms/common/internal/zzp;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzrb;->q:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzxp;->a(Lcom/google/android/gms/common/internal/zzp;Z)V

    :cond_22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrb;->a(Z)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzrf;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->a()V

    goto :goto_32

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x0

    :goto_55
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzrf;->h:Lcom/google/android/gms/internal/zzrm$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzrm$zza;->a(Landroid/os/Bundle;)V

    return-void

    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->i:Landroid/os/Bundle;

    goto :goto_55
.end method

.method static synthetic h(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/common/internal/zzp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->o:Lcom/google/android/gms/common/internal/zzp;

    return-object v0
.end method

.method private h()V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrb;->m:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->g:Lcom/google/android/gms/internal/zzrd;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzrd;->d:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzrf;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzrf;->b:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_39
    return-void
.end method

.method private i()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_6

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic i(Lcom/google/android/gms/internal/zzrb;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->h()V

    return-void
.end method

.method private j()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->r:Lcom/google/android/gms/common/internal/zzf;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->r:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->c()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->r:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->e()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzrf;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->d()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzf$zza;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzf$zza;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_22

    :cond_48
    move-object v0, v1

    goto :goto_8
.end method

.method static synthetic j(Lcom/google/android/gms/internal/zzrb;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->e()V

    return-void
.end method

.method static synthetic k(Lcom/google/android/gms/internal/zzrb;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqo$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .registers 12

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzrb;->m:Z

    iput-object v10, p0, Lcom/google/android/gms/internal/zzrb;->e:Lcom/google/android/gms/common/ConnectionResult;

    iput v4, p0, Lcom/google/android/gms/internal/zzrb;->g:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzrb;->l:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzrb;->n:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzrb;->p:Z

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzrf;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->d()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb;->s:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->a()Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api$zzd;->a()I

    move-result v2

    if-ne v2, v5, :cond_7c

    move v2, v5

    :goto_58
    or-int/2addr v2, v3

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zze;->d()Z

    move-result v3

    if-eqz v3, :cond_72

    iput-boolean v5, p0, Lcom/google/android/gms/internal/zzrb;->m:Z

    iget v3, p0, Lcom/google/android/gms/internal/zzrb;->l:I

    if-ge v8, v3, :cond_67

    iput v8, p0, Lcom/google/android/gms/internal/zzrb;->l:I

    :cond_67
    if-eqz v8, :cond_72

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrb;->j:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->d()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_72
    new-instance v3, Lcom/google/android/gms/internal/zzrb$zza;

    invoke-direct {v3, p0, v0, v8}, Lcom/google/android/gms/internal/zzrb$zza;-><init>(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/common/api/Api;I)V

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    goto :goto_27

    :cond_7c
    move v2, v4

    goto :goto_58

    :cond_7e
    if-eqz v3, :cond_82

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzrb;->m:Z

    :cond_82
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrb;->m:Z

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->r:Lcom/google/android/gms/common/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzrf;->g:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrd;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzf;->a(Ljava/lang/Integer;)V

    new-instance v5, Lcom/google/android/gms/internal/zzrb$zze;

    invoke-direct {v5, p0, v10}, Lcom/google/android/gms/internal/zzrb$zze;-><init>(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/internal/zzrb$1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->t:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzrf;->g:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzrd;->a()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrb;->r:Lcom/google/android/gms/common/internal/zzf;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrb;->r:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzf;->h()Lcom/google/android/gms/internal/zzxq;

    move-result-object v4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzxp;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrb;->k:Lcom/google/android/gms/internal/zzxp;

    :cond_b9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzrb;->h:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->u:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzrg;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzrb$zzb;

    invoke-direct {v2, p0, v7}, Lcom/google/android/gms/internal/zzrb$zzb;-><init>(Lcom/google/android/gms/internal/zzrb;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(I)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrb;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrb;->b(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->i:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->g()V

    goto :goto_7
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrb;->b(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzrb;->b(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->g()V

    goto :goto_7
.end method

.method public b()Z
    .registers 4

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb;->i()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzrb;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb;->a:Lcom/google/android/gms/internal/zzrf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrf;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return v2
.end method

.method public c()V
    .registers 1

    return-void
.end method
