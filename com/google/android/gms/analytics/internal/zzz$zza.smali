.class Lcom/google/android/gms/analytics/internal/zzz$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/internal/zzq$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/analytics/internal/zzq$zza",
        "<",
        "Lcom/google/android/gms/analytics/internal/zzaa;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/analytics/internal/zzf;

.field private final b:Lcom/google/android/gms/analytics/internal/zzaa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->a:Lcom/google/android/gms/analytics/internal/zzf;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzaa;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/internal/zzaa;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->b:Lcom/google/android/gms/analytics/internal/zzaa;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/analytics/internal/zzaa;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->b:Lcom/google/android/gms/analytics/internal/zzaa;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .registers 5

    const-string/jumbo v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->b:Lcom/google/android/gms/analytics/internal/zzaa;

    iput p2, v0, Lcom/google/android/gms/analytics/internal/zzaa;->d:I

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->a:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->f()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "Int xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/analytics/internal/zzaf;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5

    const-string/jumbo v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->b:Lcom/google/android/gms/analytics/internal/zzaa;

    if-eqz p2, :cond_11

    const/4 v0, 0x1

    :goto_e
    iput v0, v1, Lcom/google/android/gms/analytics/internal/zzaa;->e:I

    :goto_10
    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_e

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->a:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->f()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "Bool xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/analytics/internal/zzaf;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public synthetic b()Lcom/google/android/gms/analytics/internal/zzp;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzz$zza;->a()Lcom/google/android/gms/analytics/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->b:Lcom/google/android/gms/analytics/internal/zzaa;

    iput-object p2, v0, Lcom/google/android/gms/analytics/internal/zzaa;->a:Ljava/lang/String;

    :goto_d
    return-void

    :cond_e
    const-string/jumbo v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->b:Lcom/google/android/gms/analytics/internal/zzaa;

    iput-object p2, v0, Lcom/google/android/gms/analytics/internal/zzaa;->b:Ljava/lang/String;

    goto :goto_d

    :cond_1c
    const-string/jumbo v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->b:Lcom/google/android/gms/analytics/internal/zzaa;

    iput-object p2, v0, Lcom/google/android/gms/analytics/internal/zzaa;->c:Ljava/lang/String;

    goto :goto_d

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->a:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->f()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "String xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/analytics/internal/zzaf;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d
.end method
