.class Lcom/google/android/gms/internal/zzrb$zzb;
.super Lcom/google/android/gms/internal/zzrb$zzf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzrb;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/internal/zzrb$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrb;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/internal/zzrb$zza;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrb$zzb;->a:Lcom/google/android/gms/internal/zzrb;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzrb$zzf;-><init>(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/internal/zzrb$1;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrb$zzb;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzb;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v4

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->e()Z

    move-result v6

    if-eqz v6, :cond_5e

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrb$zzb;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrb$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb$zza;->a(Lcom/google/android/gms/internal/zzrb$zza;)I

    move-result v0

    if-nez v0, :cond_af

    move v0, v2

    :goto_2f
    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb$zzb;->a:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrb;->b(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/common/zzc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrb$zzb;->a:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzrb;->a(Lcom/google/android/gms/internal/zzrb;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/zzc;->a(Landroid/content/Context;)I

    move-result v4

    :cond_41
    if-eqz v4, :cond_63

    if-nez v0, :cond_47

    if-eqz v1, :cond_63

    :cond_47
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb$zzb;->a:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrb;->d(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/internal/zzrf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzrb$zzb$1;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrb$zzb;->a:Lcom/google/android/gms/internal/zzrb;

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/gms/internal/zzrb$zzb$1;-><init>(Lcom/google/android/gms/internal/zzrb$zzb;Lcom/google/android/gms/internal/zzre;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzrf;->a(Lcom/google/android/gms/internal/zzrf$zza;)V

    :cond_5d
    return-void

    :cond_5e
    move v0, v4

    move v1, v3

    :goto_60
    move v3, v1

    move v1, v0

    goto :goto_e

    :cond_63
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzb;->a:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->e(Lcom/google/android/gms/internal/zzrb;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzb;->a:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->f(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/internal/zzxp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzxp;->l()V

    :cond_74
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzb;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb$zzb;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zze$zzf;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->e()Z

    move-result v3

    if-eqz v3, :cond_ab

    if-eqz v4, :cond_ab

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzb;->a:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->d(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/internal/zzrf;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/zzrb$zzb$2;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzrb$zzb;->a:Lcom/google/android/gms/internal/zzrb;

    invoke-direct {v3, p0, v5, v1}, Lcom/google/android/gms/internal/zzrb$zzb$2;-><init>(Lcom/google/android/gms/internal/zzrb$zzb;Lcom/google/android/gms/internal/zzre;Lcom/google/android/gms/common/internal/zze$zzf;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzrf;->a(Lcom/google/android/gms/internal/zzrf$zza;)V

    goto :goto_7e

    :cond_ab
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$zze;->a(Lcom/google/android/gms/common/internal/zze$zzf;)V

    goto :goto_7e

    :cond_af
    move v0, v1

    move v1, v2

    goto :goto_60

    :cond_b2
    move v2, v3

    move v0, v4

    goto/16 :goto_2f
.end method
