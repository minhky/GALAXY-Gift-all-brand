.class public final Lcom/google/android/gms/analytics/zzc;
.super Ljava/lang/Object;


# direct methods
.method public static zzT(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "&cd"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzU(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "cd"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzV(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "&cm"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzW(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "cm"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzX(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "&pr"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzY(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "pr"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzZ(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "&promo"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzaa(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "promo"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzab(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "pi"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzac(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "&il"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzad(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "il"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzae(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "cd"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzaf(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "cm"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zzb(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_d

    const-string/jumbo v0, "index out of range for prefix"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/internal/zzae;->zzf(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, ""

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
