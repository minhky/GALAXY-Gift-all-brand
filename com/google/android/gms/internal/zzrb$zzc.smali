.class Lcom/google/android/gms/internal/zzrb$zzc;
.super Lcom/google/android/gms/internal/zzrb$zzf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzrb;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrb;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrb$zzc;->a:Lcom/google/android/gms/internal/zzrb;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzrb$zzf;-><init>(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/internal/zzrb$1;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrb$zzc;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzc;->a:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->d(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/internal/zzrf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->g:Lcom/google/android/gms/internal/zzrd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb$zzc;->a:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrb;->g(Lcom/google/android/gms/internal/zzrb;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzrd;->d:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb$zzc;->a:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrb;->h(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/common/internal/zzp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrb$zzc;->a:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzrb;->d(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/internal/zzrf;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzrf;->g:Lcom/google/android/gms/internal/zzrd;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzrd;->d:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/common/api/Api$zze;->a(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;)V

    goto :goto_16

    :cond_36
    return-void
.end method
