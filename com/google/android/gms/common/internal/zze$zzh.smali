.class public final Lcom/google/android/gms/common/internal/zze$zzh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/zze;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zze;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze$zzh;->a:Lcom/google/android/gms/common/internal/zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/zze$zzh;->b:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    const/4 v4, 0x0

    if-nez p2, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzh;->a:Lcom/google/android/gms/common/internal/zze;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    const-string/jumbo v3, "ServiceBroker IBinder is null"

    invoke-direct {v1, v2, v4, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zze;->a(Lcom/google/android/gms/common/internal/zze;Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzh;->a:Lcom/google/android/gms/common/internal/zze;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zze;->a(Lcom/google/android/gms/common/internal/zze;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzh;->a:Lcom/google/android/gms/common/internal/zze;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzt$zza;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzt;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zze;->a(Lcom/google/android/gms/common/internal/zze;Lcom/google/android/gms/common/internal/zzt;)Lcom/google/android/gms/common/internal/zzt;

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_2d

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzh;->a:Lcom/google/android/gms/common/internal/zze;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/internal/zze$zzh;->b:I

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/common/internal/zze;->a(ILandroid/os/Bundle;I)V

    goto :goto_12

    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzh;->a:Lcom/google/android/gms/common/internal/zze;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zze;->a(Lcom/google/android/gms/common/internal/zze;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzh;->a:Lcom/google/android/gms/common/internal/zze;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zze;->a(Lcom/google/android/gms/common/internal/zze;Lcom/google/android/gms/common/internal/zzt;)Lcom/google/android/gms/common/internal/zzt;

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_22

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzh;->a:Lcom/google/android/gms/common/internal/zze;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zze;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze$zzh;->a:Lcom/google/android/gms/common/internal/zze;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zze;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/gms/common/internal/zze$zzh;->b:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method
