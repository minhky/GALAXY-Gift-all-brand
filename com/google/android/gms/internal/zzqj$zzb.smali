.class public Lcom/google/android/gms/internal/zzqj$zzb;
.super Lcom/google/android/gms/internal/zzqj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/google/android/gms/internal/zzqo$zza",
        "<+",
        "Lcom/google/android/gms/common/api/Result;",
        "Lcom/google/android/gms/common/api/Api$zzb;",
        ">;>",
        "Lcom/google/android/gms/internal/zzqj;"
    }
.end annotation


# instance fields
.field protected final b:Lcom/google/android/gms/internal/zzqo$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/zzqo$zza;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqj;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqj$zzb;->b:Lcom/google/android/gms/internal/zzqo$zza;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqj$zzb;->b:Lcom/google/android/gms/internal/zzqo$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqo$zza;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/zzqv;Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqj$zzb;->b:Lcom/google/android/gms/internal/zzqo$zza;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/zzqv;->a(Lcom/google/android/gms/internal/zzqq;Z)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/zzrh$zza;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzrh$zza",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqj$zzb;->b:Lcom/google/android/gms/internal/zzqo$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrh$zza;->c()Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqo$zza;->a(Lcom/google/android/gms/common/api/Api$zzb;)V

    return-void
.end method
