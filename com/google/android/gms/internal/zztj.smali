.class public Lcom/google/android/gms/internal/zztj;
.super Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static zzHC()Lcom/google/android/gms/internal/zztj;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zztj;

    const-string/jumbo v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zztj;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzHD()Lcom/google/android/gms/internal/zztj;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zztj;

    const-string/jumbo v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zztj;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzHE()Lcom/google/android/gms/internal/zztj;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zztj;

    const-string/jumbo v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zztj;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzHF()Lcom/google/android/gms/internal/zztj;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zztj;

    const-string/jumbo v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zztj;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzHG()Lcom/google/android/gms/internal/zztj;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zztj;

    const-string/jumbo v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zztj;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzHH()Lcom/google/android/gms/internal/zztj;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zztj;

    const-string/jumbo v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zztj;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzHI()Lcom/google/android/gms/internal/zztj;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zztj;

    const-string/jumbo v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zztj;-><init>(Ljava/lang/String;)V

    return-object v0
.end method