.class abstract Lcom/google/android/gms/internal/zzrb$zzf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/zzrb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzrb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrb$zzf;->b:Lcom/google/android/gms/internal/zzrb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/internal/zzrb$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrb$zzf;-><init>(Lcom/google/android/gms/internal/zzrb;)V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzf;->b:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->c(Lcom/google/android/gms/internal/zzrb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_c} :catch_26
    .catchall {:try_start_9 .. :try_end_c} :catchall_3a

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzf;->b:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->c(Lcom/google/android/gms/internal/zzrb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_18
    return-void

    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrb$zzf;->a()V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1c} :catch_26
    .catchall {:try_start_19 .. :try_end_1c} :catchall_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzf;->b:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->c(Lcom/google/android/gms/internal/zzrb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_18

    :catch_26
    move-exception v0

    :try_start_27
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb$zzf;->b:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrb;->d(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/internal/zzrf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzrf;->a(Ljava/lang/RuntimeException;)V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzf;->b:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->c(Lcom/google/android/gms/internal/zzrb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_18

    :catchall_3a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb$zzf;->b:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrb;->c(Lcom/google/android/gms/internal/zzrb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
