.class final Lcom/google/android/gms/common/internal/zze$10;
.super Lcom/google/android/gms/common/internal/zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/internal/zze;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zze;

    return-object v0
.end method

.method public zzb(Ljava/lang/CharSequence;)Z
    .registers 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public zzd(C)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
