.class public Lcom/google/android/gms/common/stats/zzb;
.super Ljava/lang/Object;


# static fields
.field private static final zzakg:Ljava/lang/Object;

.field private static zzalE:Ljava/lang/Integer;

.field private static zzaly:Lcom/google/android/gms/common/stats/zzb;


# instance fields
.field private final zzalA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzalB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzalC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzalD:Lcom/google/android/gms/common/stats/zze;

.field private zzalF:Lcom/google/android/gms/common/stats/zze;

.field private final zzalz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->zzakg:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    const/16 v4, 0x400

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->getLogLevel()I

    move-result v0

    sget v1, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    if-ne v0, v1, :cond_1e

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzalz:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzalA:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzalB:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzalC:Ljava/util/List;

    :goto_1d
    return-void

    :cond_1e
    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_7d

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_2a
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzalz:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzalK:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_89

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_38
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzalA:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzalL:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_95

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_46
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzalB:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzalM:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_a1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_54
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzalC:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/common/stats/zze;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzalN:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/common/stats/zze;-><init>(IJ)V

    iput-object v1, p0, Lcom/google/android/gms/common/stats/zzb;->zzalD:Lcom/google/android/gms/common/stats/zze;

    new-instance v1, Lcom/google/android/gms/common/stats/zze;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzalN:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/common/stats/zze;-><init>(IJ)V

    iput-object v1, p0, Lcom/google/android/gms/common/stats/zzb;->zzalF:Lcom/google/android/gms/common/stats/zze;

    goto :goto_1d

    :cond_7d
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2a

    :cond_89
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_38

    :cond_95
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_46

    :cond_a1
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_54
.end method

.method private static getLogLevel()I
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/stats/zzb;->zzalE:Ljava/lang/Integer;

    if-nez v0, :cond_1c

    :try_start_4
    invoke-static {}, Lcom/google/android/gms/internal/zznk;->zzka()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzalI:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->zzalE:Ljava/lang/Integer;
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_1c} :catch_26

    :cond_1c
    :goto_1c
    sget-object v0, Lcom/google/android/gms/common/stats/zzb;->zzalE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_23
    :try_start_23
    sget v0, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_25} :catch_26

    goto :goto_16

    :catch_26
    move-exception v0

    sget v0, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->zzalE:Ljava/lang/Integer;

    goto :goto_1c
.end method

.method private zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v10, 0x0

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->getLogLevel()I

    move-result v2

    sget v5, Lcom/google/android/gms/common/stats/zzd;->zzalS:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_1a

    const/16 v2, 0xd

    move/from16 v0, p3

    if-eq v0, v2, :cond_1a

    const/4 v2, 0x3

    const/4 v5, 0x5

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/zzny;->zzm(II)Ljava/lang/String;

    move-result-object v10

    :cond_1a
    const-wide/16 v14, 0x0

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->getLogLevel()I

    move-result v2

    sget v5, Lcom/google/android/gms/common/stats/zzd;->zzalU:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_29

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v14

    :cond_29
    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_39

    const/4 v2, 0x4

    move/from16 v0, p3

    if-eq v0, v2, :cond_39

    const/16 v2, 0xe

    move/from16 v0, p3

    if-ne v0, v2, :cond_62

    :cond_39
    new-instance v2, Lcom/google/android/gms/common/stats/ConnectionEvent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move/from16 v5, p3

    move-object/from16 v11, p2

    invoke-direct/range {v2 .. v15}, Lcom/google/android/gms/common/stats/ConnectionEvent;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    :goto_4a
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/google/android/gms/common/stats/zzd;->zzalO:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "com.google.android.gms.common.stats.EXTRA_LOG_EVENT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_62
    new-instance v2, Lcom/google/android/gms/common/stats/ConnectionEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p2

    invoke-direct/range {v2 .. v15}, Lcom/google/android/gms/common/stats/ConnectionEvent;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_4a
.end method

.method private zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .registers 14

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/stats/zzb;->zzrA()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzalD:Lcom/google/android/gms/common/stats/zze;

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x4

    if-eq p5, v0, :cond_13

    if-ne p5, v5, :cond_26

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzalD:Lcom/google/android/gms/common/stats/zze;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/stats/zze;->zzcN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v7, v4

    move-object v6, v4

    :goto_1d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_26
    invoke-static {p1, p4}, Lcom/google/android/gms/common/stats/zzb;->zzd(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_45

    const-string/jumbo v0, "ConnectionTracker"

    const-string/jumbo v1, "Client %s made an invalid request %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-virtual {p4, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_45
    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzny;->zzay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p3, v6, v7}, Lcom/google/android/gms/common/stats/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzalD:Lcom/google/android/gms/common/stats/zze;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/stats/zze;->zzcM(Ljava/lang/String;)Ljava/lang/Long;

    goto :goto_1d
.end method

.method private zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->getLogLevel()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/stats/zzb;->zzalz:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/common/stats/zzb;->zzalA:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/common/stats/zzb;->zzalB:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/common/stats/zzb;->zzalC:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    sget v1, Lcom/google/android/gms/common/stats/zzd;->zzalT:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_31

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x1

    goto :goto_30
.end method

.method private zzc(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_17

    sget-boolean v1, Lcom/google/android/gms/common/internal/zzd;->zzaiU:Z

    if-eqz v1, :cond_19

    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0

    :cond_19
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zznk;->zzj(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_18
.end method

.method private static zzd(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;
    .registers 11

    const/16 v8, 0x14

    const/4 v7, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_35

    :cond_18
    const-string/jumbo v0, "ConnectionTracker"

    const-string/jumbo v1, "There are no handler of this intent: %s\n Stack trace: %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/zzny;->zzm(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_34
    return-object v0

    :cond_35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v6, :cond_72

    const-string/jumbo v1, "ConnectionTracker"

    const-string/jumbo v2, "Multiple handlers found for this intent: %s\n Stack trace: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/zzny;->zzm(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    const-string/jumbo v1, "ConnectionTracker"

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_34

    :cond_72
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_34
.end method

.method private zzrA()Z
    .registers 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/google/android/gms/common/internal/zzd;->zzaiU:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->getLogLevel()I

    move-result v1

    sget v2, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    if-eq v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static zzrz()Lcom/google/android/gms/common/stats/zzb;
    .registers 2

    sget-object v1, Lcom/google/android/gms/common/stats/zzb;->zzakg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/common/stats/zzb;->zzaly:Lcom/google/android/gms/common/stats/zzb;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/common/stats/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->zzaly:Lcom/google/android/gms/common/stats/zzb;

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcom/google/android/gms/common/stats/zzb;->zzaly:Lcom/google/android/gms/common/stats/zzb;

    return-object v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 9

    const/4 v3, 0x0

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method

.method public zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 11

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method

.method public zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 13

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/common/stats/zzb;->zzc(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "ConnectionTracker"

    const-string/jumbo v1, "Attempted to bind to a service in a STOPPED package."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-direct {p0, p4}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    :cond_23
    move v0, v6

    goto :goto_10
.end method

.method public zzb(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method
