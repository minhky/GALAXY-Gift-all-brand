.class final Lcom/google/android/gms/internal/zzmt$1;
.super Lcom/google/android/gms/internal/zzmt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmt;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzmt",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzmt;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzcn(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmt$1;->zzco(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected zzco(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/zzmt;->zzpG()Lcom/google/android/gms/internal/zzmt$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmt$1;->zzuX:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmt$1;->zzuY:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzmt$zza;->zza(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
