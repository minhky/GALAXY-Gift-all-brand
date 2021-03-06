.class public final Lokhttp3/internal/http/RetryableSink;
.super Ljava/lang/Object;
.source "RetryableSink.java"

# interfaces
.implements Lokio/Sink;


# instance fields
.field private a:Z

.field private final b:I

.field private final c:Lokio/Buffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lokhttp3/internal/http/RetryableSink;-><init>(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http/RetryableSink;->c:Lokio/Buffer;

    .line 36
    iput p1, p0, Lokhttp3/internal/http/RetryableSink;->b:I

    .line 37
    return-void
.end method


# virtual methods
.method public a()Lokio/Timeout;
    .registers 2

    .prologue
    .line 65
    sget-object v0, Lokio/Timeout;->b:Lokio/Timeout;

    return-object v0
.end method

.method public a(Lokio/Sink;)V
    .registers 8

    .prologue
    .line 74
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 75
    iget-object v0, p0, Lokhttp3/internal/http/RetryableSink;->c:Lokio/Buffer;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lokhttp3/internal/http/RetryableSink;->c:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->b()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->a(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 76
    invoke-virtual {v1}, Lokio/Buffer;->b()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lokio/Sink;->a_(Lokio/Buffer;J)V

    .line 77
    return-void
.end method

.method public a_(Lokio/Buffer;J)V
    .registers 10

    .prologue
    .line 53
    iget-boolean v0, p0, Lokhttp3/internal/http/RetryableSink;->a:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_d
    invoke-virtual {p1}, Lokio/Buffer;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/Util;->a(JJJ)V

    .line 55
    iget v0, p0, Lokhttp3/internal/http/RetryableSink;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4d

    iget-object v0, p0, Lokhttp3/internal/http/RetryableSink;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v0

    iget v2, p0, Lokhttp3/internal/http/RetryableSink;->b:I

    int-to-long v2, v2

    sub-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4d

    .line 56
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exceeded content-length limit of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/RetryableSink;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_4d
    iget-object v0, p0, Lokhttp3/internal/http/RetryableSink;->c:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->a_(Lokio/Buffer;J)V

    .line 59
    return-void
.end method

.method public b()J
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lokhttp3/internal/http/RetryableSink;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .registers 5

    .prologue
    .line 44
    iget-boolean v0, p0, Lokhttp3/internal/http/RetryableSink;->a:Z

    if-eqz v0, :cond_5

    .line 50
    :cond_4
    return-void

    .line 45
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/RetryableSink;->a:Z

    .line 46
    iget-object v0, p0, Lokhttp3/internal/http/RetryableSink;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v0

    iget v2, p0, Lokhttp3/internal/http/RetryableSink;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 47
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "content-length promised "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/RetryableSink;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes, but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/RetryableSink;->c:Lokio/Buffer;

    .line 48
    invoke-virtual {v2}, Lokio/Buffer;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 62
    return-void
.end method
