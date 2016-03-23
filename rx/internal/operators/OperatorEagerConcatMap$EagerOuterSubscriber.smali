.class final Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;
.super Lrx/Subscriber;
.source "OperatorEagerConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorEagerConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EagerOuterSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final bufferSize:I

.field volatile cancelled:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final mapper:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field private sharedProducer:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

.field final subscribers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/functions/Func1;ILrx/Subscriber;)V
    .registers 5
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;I",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    .local p1, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    .local p3, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 86
    iput-object p1, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->mapper:Lrx/functions/Func1;

    .line 87
    iput p2, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->bufferSize:I

    .line 88
    iput-object p3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->actual:Lrx/Subscriber;

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    return-void
.end method


# virtual methods
.method cleanup()V
    .registers 6

    .prologue
    .line 110
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    monitor-enter v4

    .line 111
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 113
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_24

    .line 115
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Subscription;

    .line 116
    .local v2, "s":Lrx/Subscription;
    invoke-interface {v2}, Lrx/Subscription;->unsubscribe()V

    goto :goto_14

    .line 113
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    .end local v2    # "s":Lrx/Subscription;
    :catchall_24
    move-exception v3

    :try_start_25
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v3

    .line 118
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    :cond_27
    return-void
.end method

.method drain()V
    .registers 23

    .prologue
    .line 162
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v19

    if-eqz v19, :cond_d

    .line 266
    :goto_c
    return-void

    .line 165
    :cond_d
    const/4 v12, 0x1

    .line 167
    .local v12, "missed":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->sharedProducer:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

    .line 168
    .local v14, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->actual:Lrx/Subscriber;

    .line 172
    .local v2, "actualSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cancelled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_22

    .line 173
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cleanup()V

    goto :goto_c

    .line 179
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->done:Z

    .line 180
    .local v13, "outerDone":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 181
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;

    .line 182
    .local v11, "innerSubscriber":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    monitor-exit v20
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_4c

    .line 183
    if-nez v11, :cond_4f

    const/4 v3, 0x1

    .line 185
    .local v3, "empty":Z
    :goto_3d
    if-eqz v13, :cond_57

    .line 186
    move-object/from16 v0, p0

    iget-object v6, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->error:Ljava/lang/Throwable;

    .line 187
    .local v6, "error":Ljava/lang/Throwable;
    if-eqz v6, :cond_51

    .line 188
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cleanup()V

    .line 189
    invoke-virtual {v2, v6}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 182
    .end local v3    # "empty":Z
    .end local v6    # "error":Ljava/lang/Throwable;
    .end local v11    # "innerSubscriber":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    :catchall_4c
    move-exception v19

    :try_start_4d
    monitor-exit v20
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v19

    .line 183
    .restart local v11    # "innerSubscriber":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    :cond_4f
    const/4 v3, 0x0

    goto :goto_3d

    .line 192
    .restart local v3    # "empty":Z
    .restart local v6    # "error":Ljava/lang/Throwable;
    :cond_51
    if-eqz v3, :cond_57

    .line 193
    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_c

    .line 198
    .end local v6    # "error":Ljava/lang/Throwable;
    :cond_57
    if-nez v3, :cond_b4

    .line 199
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    .line 200
    .local v16, "requestedAmount":J
    const-wide/16 v4, 0x0

    .line 201
    .local v4, "emittedAmount":J
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v19, v16, v20

    if-nez v19, :cond_82

    const/4 v15, 0x1

    .line 203
    .local v15, "unbounded":Z
    :goto_69
    iget-object v10, v11, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->queue:Ljava/util/Queue;

    .line 204
    .local v10, "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<TR;>;"
    const/4 v8, 0x0

    .line 208
    .local v8, "innerDone":Z
    :goto_6c
    iget-boolean v13, v11, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->done:Z

    .line 209
    invoke-interface {v10}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v18

    .line 210
    .local v18, "v":Ljava/lang/Object;, "TR;"
    if-nez v18, :cond_84

    const/4 v3, 0x1

    .line 212
    :goto_75
    if-eqz v13, :cond_c8

    .line 213
    iget-object v9, v11, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->error:Ljava/lang/Throwable;

    .line 214
    .local v9, "innerError":Ljava/lang/Throwable;
    if-eqz v9, :cond_86

    .line 215
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cleanup()V

    .line 216
    invoke-virtual {v2, v9}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 201
    .end local v8    # "innerDone":Z
    .end local v9    # "innerError":Ljava/lang/Throwable;
    .end local v10    # "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<TR;>;"
    .end local v15    # "unbounded":Z
    .end local v18    # "v":Ljava/lang/Object;, "TR;"
    :cond_82
    const/4 v15, 0x0

    goto :goto_69

    .line 210
    .restart local v8    # "innerDone":Z
    .restart local v10    # "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<TR;>;"
    .restart local v15    # "unbounded":Z
    .restart local v18    # "v":Ljava/lang/Object;, "TR;"
    :cond_84
    const/4 v3, 0x0

    goto :goto_75

    .line 219
    .restart local v9    # "innerError":Ljava/lang/Throwable;
    :cond_86
    if-eqz v3, :cond_c8

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 221
    :try_start_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 222
    monitor-exit v20
    :try_end_99
    .catchall {:try_start_8f .. :try_end_99} :catchall_c5

    .line 223
    invoke-virtual {v11}, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->unsubscribe()V

    .line 224
    const/4 v8, 0x1

    .line 250
    .end local v9    # "innerError":Ljava/lang/Throwable;
    :cond_9d
    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-eqz v19, :cond_b2

    .line 251
    if-nez v15, :cond_a8

    .line 252
    invoke-virtual {v14, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 254
    :cond_a8
    if-nez v8, :cond_b2

    .line 255
    neg-long v0, v4

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->requestMore(J)V

    .line 259
    :cond_b2
    if-nez v8, :cond_16

    .line 264
    .end local v4    # "emittedAmount":J
    .end local v8    # "innerDone":Z
    .end local v10    # "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<TR;>;"
    .end local v15    # "unbounded":Z
    .end local v16    # "requestedAmount":J
    .end local v18    # "v":Ljava/lang/Object;, "TR;"
    :cond_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    neg-int v0, v12

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v12

    .line 265
    if-nez v12, :cond_16

    goto/16 :goto_c

    .line 222
    .restart local v4    # "emittedAmount":J
    .restart local v8    # "innerDone":Z
    .restart local v9    # "innerError":Ljava/lang/Throwable;
    .restart local v10    # "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<TR;>;"
    .restart local v15    # "unbounded":Z
    .restart local v16    # "requestedAmount":J
    .restart local v18    # "v":Ljava/lang/Object;, "TR;"
    :catchall_c5
    move-exception v19

    :try_start_c6
    monitor-exit v20
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw v19

    .line 229
    .end local v9    # "innerError":Ljava/lang/Throwable;
    :cond_c8
    if-nez v3, :cond_9d

    .line 233
    const-wide/16 v20, 0x0

    cmp-long v19, v16, v20

    if-eqz v19, :cond_9d

    .line 237
    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 240
    :try_start_d3
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_d8} :catch_e1

    .line 246
    const-wide/16 v20, 0x1

    sub-long v16, v16, v20

    .line 247
    const-wide/16 v20, 0x1

    sub-long v4, v4, v20

    .line 248
    goto :goto_6c

    .line 241
    :catch_e1
    move-exception v7

    .line 242
    .local v7, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, v18

    invoke-static {v7, v2, v0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto/16 :goto_c
.end method

.method init()V
    .registers 3

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;-><init>(Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->sharedProducer:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

    .line 95
    new-instance v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber$1;-><init>(Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->add(Lrx/Subscription;)V

    .line 104
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 105
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->actual:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->sharedProducer:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 106
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 157
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->done:Z

    .line 158
    invoke-virtual {p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->drain()V

    .line 159
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 150
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->error:Ljava/lang/Throwable;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->done:Z

    .line 152
    invoke-virtual {p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->drain()V

    .line 153
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->mapper:Lrx/functions/Func1;

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Observable;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_14

    .line 131
    .local v2, "observable":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    new-instance v1, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;

    iget v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->bufferSize:I

    invoke-direct {v1, p0, v3}, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;-><init>(Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;I)V

    .line 132
    .local v1, "inner":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    iget-boolean v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cancelled:Z

    if-eqz v3, :cond_1b

    .line 146
    .end local v1    # "inner":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    .end local v2    # "observable":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    :cond_13
    :goto_13
    return-void

    .line 126
    :catch_14
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->actual:Lrx/Subscriber;

    invoke-static {v0, v3, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_13

    .line 135
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "inner":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    .restart local v2    # "observable":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    :cond_1b
    iget-object v4, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    monitor-enter v4

    .line 136
    :try_start_1e
    iget-boolean v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cancelled:Z

    if-eqz v3, :cond_27

    .line 137
    monitor-exit v4

    goto :goto_13

    .line 140
    :catchall_24
    move-exception v3

    monitor-exit v4
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_24

    throw v3

    .line 139
    :cond_27
    :try_start_27
    iget-object v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->subscribers:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 140
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_24

    .line 141
    iget-boolean v3, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cancelled:Z

    if-nez v3, :cond_13

    .line 144
    invoke-virtual {v2, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 145
    invoke-virtual {p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->drain()V

    goto :goto_13
.end method
