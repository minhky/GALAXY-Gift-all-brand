.class public Lcom/google/android/gms/common/util/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/util/zze;


# static fields
.field private static a:Lcom/google/android/gms/common/util/zzh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/util/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/util/zzh;->a:Lcom/google/android/gms/common/util/zzh;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/google/android/gms/common/util/zze;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/util/zzh;->a:Lcom/google/android/gms/common/util/zzh;

    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
