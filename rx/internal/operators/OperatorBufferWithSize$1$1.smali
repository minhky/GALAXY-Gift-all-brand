.class Lrx/internal/operators/OperatorBufferWithSize$1$1;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithSize$1;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile infinite:Z

.field final synthetic this$1:Lrx/internal/operators/OperatorBufferWithSize$1;

.field final synthetic val$producer:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize$1;Lrx/Producer;)V
    .registers 4

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$1$1;, "Lrx/internal/operators/OperatorBufferWithSize$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->val$producer:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->infinite:Z

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$1$1;, "Lrx/internal/operators/OperatorBufferWithSize$1.1;"
    const-wide v2, 0x7fffffffffffffffL

    .line 81
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->infinite:Z

    if-eqz v0, :cond_a

    .line 91
    :goto_9
    return-void

    .line 84
    :cond_a
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorBufferWithSize$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v0, v0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    int-to-long v0, v0

    div-long v0, v2, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_20

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->infinite:Z

    .line 87
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->val$producer:Lrx/Producer;

    invoke-interface {v0, v2, v3}, Lrx/Producer;->request(J)V

    goto :goto_9

    .line 89
    :cond_20
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->val$producer:Lrx/Producer;

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1$1;->this$1:Lrx/internal/operators/OperatorBufferWithSize$1;

    iget-object v1, v1, Lrx/internal/operators/OperatorBufferWithSize$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    int-to-long v2, v1

    mul-long/2addr v2, p1

    invoke-interface {v0, v2, v3}, Lrx/Producer;->request(J)V

    goto :goto_9
.end method
