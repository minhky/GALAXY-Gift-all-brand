.class public Lcom/google/android/gms/playlog/internal/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private zzaYl:Lcom/google/android/gms/playlog/internal/zzf;

.field private final zzaYw:Lcom/google/android/gms/internal/zzrj$zza;

.field private zzaYx:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrj$zza;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYw:Lcom/google/android/gms/internal/zzrj$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYl:Lcom/google/android/gms/playlog/internal/zzf;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYx:Z

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYl:Lcom/google/android/gms/playlog/internal/zzf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/zzf;->zzas(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYx:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYw:Lcom/google/android/gms/internal/zzrj$zza;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYw:Lcom/google/android/gms/internal/zzrj$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzrj$zza;->zzCX()V

    :cond_13
    iput-boolean v1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYx:Z

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYl:Lcom/google/android/gms/playlog/internal/zzf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/zzf;->zzas(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYx:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYw:Lcom/google/android/gms/internal/zzrj$zza;

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYw:Lcom/google/android/gms/internal/zzrj$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzrj$zza;->zze(Landroid/app/PendingIntent;)V

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYx:Z

    return-void

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYw:Lcom/google/android/gms/internal/zzrj$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzrj$zza;->zzCY()V

    goto :goto_1d
.end method

.method public onConnectionSuspended(I)V
    .registers 4
    .param p1, "cause"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYl:Lcom/google/android/gms/playlog/internal/zzf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/zzf;->zzas(Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/playlog/internal/zzf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYl:Lcom/google/android/gms/playlog/internal/zzf;

    return-void
.end method

.method public zzar(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaYx:Z

    return-void
.end method
