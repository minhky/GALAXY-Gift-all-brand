.class public Lcom/google/android/gms/analytics/internal/zzal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/internal/zzp;


# instance fields
.field public zzNB:Ljava/lang/String;

.field public zzRU:D

.field public zzRV:I

.field public zzRW:I

.field public zzRX:I

.field public zzRY:I

.field public zzRZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRU:D

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRV:I

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRW:I

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRX:I

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRY:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRZ:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getSessionTimeout()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRV:I

    return v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzNB:Ljava/lang/String;

    return-object v0
.end method

.method public zzbo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    move-object v0, p1

    goto :goto_a
.end method

.method public zzlC()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzNB:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public zzlD()Z
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRU:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public zzlE()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRU:D

    return-wide v0
.end method

.method public zzlF()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRV:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public zzlG()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRW:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public zzlH()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRW:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public zzlI()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public zzlJ()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRX:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public zzlK()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzRY:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public zzq(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzal;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method