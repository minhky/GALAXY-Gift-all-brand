.class public Lcom/google/android/gms/analytics/internal/zzal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/internal/zzp;


# instance fields
.field public a:Ljava/lang/String;

.field public b:D

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/util/Map;
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

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->b:D

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzal;->c:I

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzal;->d:I

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzal;->e:I

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzal;->f:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzal;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->g:Ljava/util/Map;

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

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->b:D

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

.method public d()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->b:D

    return-wide v0
.end method

.method public e()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->c:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->c:I

    return v0
.end method

.method public g()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public h()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/internal/zzal;->d:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public i()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public j()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/internal/zzal;->e:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public k()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/internal/zzal;->f:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
