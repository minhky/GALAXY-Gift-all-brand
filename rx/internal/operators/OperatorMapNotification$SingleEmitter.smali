.class final Lrx/internal/operators/OperatorMapNotification$SingleEmitter;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorMapNotification.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMapNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x377b72469ea2724L


# instance fields
.field final cancel:Lrx/Subscription;

.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile complete:Z

.field emitting:Z

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final producer:Lrx/Producer;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/Producer;Lrx/Subscription;)V
    .registers 6
    .param p2, "producer"    # Lrx/Producer;
    .param p3, "cancel"    # Lrx/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/Producer;",
            "Lrx/Subscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 119
    iput-object p1, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->child:Lrx/Subscriber;

    .line 120
    iput-object p2, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->producer:Lrx/Producer;

    .line 121
    iput-object p3, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->cancel:Lrx/Subscription;

    .line 122
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    :goto_15
    iput-object v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->queue:Ljava/util/Queue;

    .line 126
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->nl:Lrx/internal/operators/NotificationLite;

    .line 127
    return-void

    .line 122
    :cond_1e
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_15
.end method


# virtual methods
.method drain()V
    .registers 9

    .prologue
    .line 182
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    monitor-enter p0

    .line 183
    :try_start_1
    iget-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->emitting:Z

    if-eqz v6, :cond_a

    .line 184
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->missed:Z

    .line 185
    monitor-exit p0

    .line 229
    :cond_9
    :goto_9
    return-void

    .line 187
    :cond_a
    const/4 v6, 0x1

    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->emitting:Z

    .line 188
    const/4 v6, 0x0

    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->missed:Z

    .line 189
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_33

    .line 190
    const/4 v4, 0x0

    .line 194
    .local v4, "skipFinal":Z
    :goto_12
    :try_start_12
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->get()J

    move-result-wide v2

    .line 195
    .local v2, "r":J
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->complete:Z

    .line 196
    .local v0, "c":Z
    iget-object v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->queue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    .line 198
    .local v1, "empty":Z
    if-eqz v0, :cond_36

    if-eqz v1, :cond_36

    .line 199
    iget-object v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->child:Lrx/Subscriber;

    invoke-virtual {v6}, Lrx/Subscriber;->onCompleted()V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_84

    .line 200
    const/4 v4, 0x1

    .line 226
    if-nez v4, :cond_9

    .line 227
    monitor-enter p0

    .line 228
    const/4 v6, 0x0

    :try_start_2c
    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->emitting:Z

    .line 229
    monitor-exit p0

    goto :goto_9

    :catchall_30
    move-exception v6

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_30

    throw v6

    .line 189
    .end local v0    # "c":Z
    .end local v1    # "empty":Z
    .end local v2    # "r":J
    .end local v4    # "skipFinal":Z
    :catchall_33
    move-exception v6

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v6

    .line 203
    .restart local v0    # "c":Z
    .restart local v1    # "empty":Z
    .restart local v2    # "r":J
    .restart local v4    # "skipFinal":Z
    :cond_36
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_54

    .line 204
    :try_start_3c
    iget-object v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->queue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    .line 205
    .local v5, "v":Ljava/lang/Object;
    if-eqz v5, :cond_69

    .line 206
    iget-object v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->child:Lrx/Subscriber;

    iget-object v7, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v7, v5}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 207
    const-wide/16 v6, 0x1

    invoke-virtual {p0, v6, v7}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->produced(J)V

    .line 216
    .end local v5    # "v":Ljava/lang/Object;
    :cond_54
    monitor-enter p0
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_84

    .line 217
    :try_start_55
    iget-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->missed:Z

    if-nez v6, :cond_7c

    .line 218
    const/4 v4, 0x1

    .line 219
    const/4 v6, 0x0

    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->emitting:Z

    .line 220
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_81

    .line 226
    if-nez v4, :cond_9

    .line 227
    monitor-enter p0

    .line 228
    const/4 v6, 0x0

    :try_start_62
    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->emitting:Z

    .line 229
    monitor-exit p0

    goto :goto_9

    :catchall_66
    move-exception v6

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_66

    throw v6

    .line 209
    .restart local v5    # "v":Ljava/lang/Object;
    :cond_69
    if-eqz v0, :cond_54

    .line 210
    :try_start_6b
    iget-object v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->child:Lrx/Subscriber;

    invoke-virtual {v6}, Lrx/Subscriber;->onCompleted()V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_84

    .line 211
    const/4 v4, 0x1

    .line 226
    if-nez v4, :cond_9

    .line 227
    monitor-enter p0

    .line 228
    const/4 v6, 0x0

    :try_start_75
    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->emitting:Z

    .line 229
    monitor-exit p0

    goto :goto_9

    :catchall_79
    move-exception v6

    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_75 .. :try_end_7b} :catchall_79

    throw v6

    .line 222
    .end local v5    # "v":Ljava/lang/Object;
    :cond_7c
    const/4 v6, 0x0

    :try_start_7d
    iput-boolean v6, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->missed:Z

    .line 223
    monitor-exit p0

    goto :goto_12

    :catchall_81
    move-exception v6

    monitor-exit p0
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_81

    :try_start_83
    throw v6
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_84

    .line 226
    .end local v0    # "c":Z
    .end local v1    # "empty":Z
    .end local v2    # "r":J
    :catchall_84
    move-exception v6

    if-nez v4, :cond_8c

    .line 227
    monitor-enter p0

    .line 228
    const/4 v7, 0x0

    :try_start_89
    iput-boolean v7, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->emitting:Z

    .line 229
    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    :cond_8c
    throw v6

    :catchall_8d
    move-exception v6

    :try_start_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v6
.end method

.method public isUnsubscribed()Z
    .registers 5

    .prologue
    .line 236
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public offer(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 165
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->child:Lrx/Subscriber;

    new-instance v1, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v1}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 166
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->unsubscribe()V

    .line 170
    :goto_15
    return-void

    .line 168
    :cond_16
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->drain()V

    goto :goto_15
.end method

.method public offerAndComplete(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 173
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->child:Lrx/Subscriber;

    new-instance v1, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v1}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 174
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->unsubscribe()V

    .line 179
    :goto_15
    return-void

    .line 176
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->complete:Z

    .line 177
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->drain()V

    goto :goto_15
.end method

.method produced(J)V
    .registers 12
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    const-wide/16 v6, 0x0

    .line 149
    :cond_2
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->get()J

    move-result-wide v0

    .line 150
    .local v0, "r":J
    cmp-long v4, v0, v6

    if-gez v4, :cond_b

    .line 158
    :goto_a
    return-void

    .line 153
    :cond_b
    sub-long v2, v0, p1

    .line 154
    .local v2, "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_3d

    .line 155
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "More produced ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") than requested ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 157
    :cond_3d
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_a
.end method

.method public request(J)V
    .registers 12
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    const-wide/16 v6, 0x0

    .line 131
    :cond_2
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->get()J

    move-result-wide v0

    .line 132
    .local v0, "r":J
    cmp-long v4, v0, v6

    if-gez v4, :cond_b

    .line 142
    :goto_a
    return-void

    .line 135
    :cond_b
    add-long v2, v0, p1

    .line 136
    .local v2, "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_16

    .line 137
    const-wide v2, 0x7fffffffffffffffL

    .line 139
    :cond_16
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    iget-object v4, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->producer:Lrx/Producer;

    invoke-interface {v4, p1, p2}, Lrx/Producer;->request(J)V

    .line 141
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->drain()V

    goto :goto_a
.end method

.method public unsubscribe()V
    .registers 7

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$SingleEmitter;, "Lrx/internal/operators/OperatorMapNotification$SingleEmitter<TT;>;"
    const-wide/high16 v4, -0x8000000000000000L

    .line 240
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->get()J

    move-result-wide v0

    .line 241
    .local v0, "r":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_17

    .line 242
    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->getAndSet(J)J

    move-result-wide v0

    .line 243
    cmp-long v2, v0, v4

    if-eqz v2, :cond_17

    .line 244
    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->cancel:Lrx/Subscription;

    invoke-interface {v2}, Lrx/Subscription;->unsubscribe()V

    .line 247
    :cond_17
    return-void
.end method
