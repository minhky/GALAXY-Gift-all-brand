.class abstract Lcom/google/android/gms/common/zzc$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zza"
.end annotation


# instance fields
.field private zzadZ:I


# direct methods
.method protected constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0x19

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_9
    const-string/jumbo v1, "cert hash data has incorrect length"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/zzc$zza;->zzadZ:I

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected static zzcm(Ljava/lang/String;)[B
    .registers 3

    :try_start_0
    const-string/jumbo v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v0

    return-object v0

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    if-eqz p1, :cond_6

    instance-of v0, p1, Lcom/google/android/gms/common/zzc$zza;

    if-nez v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    .end local p1    # "other":Ljava/lang/Object;
    :goto_7
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_8
    check-cast p1, Lcom/google/android/gms/common/zzc$zza;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzc$zza;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/zzc$zza;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_7
.end method

.method abstract getBytes()[B
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/zzc$zza;->zzadZ:I

    return v0
.end method