.class Lokhttp3/internal/framed/FramedConnection$2;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/FramedConnection;->a(IJ)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:J

.field final synthetic d:Lokhttp3/internal/framed/FramedConnection;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .registers 8

    .prologue
    .line 361
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$2;->d:Lokhttp3/internal/framed/FramedConnection;

    iput p4, p0, Lokhttp3/internal/framed/FramedConnection$2;->a:I

    iput-wide p5, p0, Lokhttp3/internal/framed/FramedConnection$2;->c:J

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 5

    .prologue
    .line 364
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$2;->d:Lokhttp3/internal/framed/FramedConnection;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    iget v1, p0, Lokhttp3/internal/framed/FramedConnection$2;->a:I

    iget-wide v2, p0, Lokhttp3/internal/framed/FramedConnection$2;->c:J

    invoke-interface {v0, v1, v2, v3}, Lokhttp3/internal/framed/FrameWriter;->a(IJ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 367
    :goto_b
    return-void

    .line 365
    :catch_c
    move-exception v0

    goto :goto_b
.end method
