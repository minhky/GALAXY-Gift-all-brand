.class final Lcom/google/android/gms/common/zzc$zzw;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lcom/google/android/gms/common/zzc$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/zzc$zza;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/common/zzc$zzw$1;

    const-string/jumbo v3, "0\u0082\u0003\u00bf0\u0082\u0002\u00a7\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00abx\'l\u00c6\u0016]\u00ab0"

    invoke-static {v3}, Lcom/google/android/gms/common/zzc$zza;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzc$zzw$1;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/common/zzc$zzw$2;

    const-string/jumbo v3, "0\u0082\u0003\u00bf0\u0082\u0002\u00a7\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00bb+\u009e\u00a2\u0004\u00f0\u00db\u00cb0"

    invoke-static {v3}, Lcom/google/android/gms/common/zzc$zza;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzc$zzw$2;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/zzc$zzw;->a:[Lcom/google/android/gms/common/zzc$zza;

    return-void
.end method
