.class Lcom/google/android/gms/tasks/zze$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tasks/zze;->a(Lcom/google/android/gms/tasks/Task;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/Task;

.field final synthetic b:Lcom/google/android/gms/tasks/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/zze;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tasks/zze$1;->b:Lcom/google/android/gms/tasks/zze;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zze$1;->a:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tasks/zze$1;->b:Lcom/google/android/gms/tasks/zze;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zze;->a(Lcom/google/android/gms/tasks/zze;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/tasks/zze$1;->b:Lcom/google/android/gms/tasks/zze;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zze;->b(Lcom/google/android/gms/tasks/zze;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/tasks/zze$1;->b:Lcom/google/android/gms/tasks/zze;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zze;->b(Lcom/google/android/gms/tasks/zze;)Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/tasks/zze$1;->a:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/tasks/OnSuccessListener;->a(Ljava/lang/Object;)V

    :cond_1e
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v0
.end method
