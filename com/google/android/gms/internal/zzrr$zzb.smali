.class public final Lcom/google/android/gms/internal/zzrr$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/zzrr$zzb;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzrr$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzb;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzrr$zzb;->a:Ljava/lang/Object;

    if-ne v2, v3, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrr$zzb;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzrr$zzb;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1d
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrr$zzb;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrr$zzb;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
