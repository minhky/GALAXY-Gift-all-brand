.class public Lcz/msebera/android/httpclient/entity/ByteArrayEntity;
.super Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;
.source "ByteArrayEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final b:[B

.field protected final content:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final len:I

.field private final off:I


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .param p1, "b"    # [B

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;-><init>([BLcz/msebera/android/httpclient/entity/ContentType;)V

    .line 92
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;-><init>([BIILcz/msebera/android/httpclient/entity/ContentType;)V

    .line 96
    return-void
.end method

.method public constructor <init>([BIILcz/msebera/android/httpclient/entity/ContentType;)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "contentType"    # Lcz/msebera/android/httpclient/entity/ContentType;

    .prologue
    .line 75
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 76
    const-string/jumbo v0, "Source byte array"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    if-ltz p2, :cond_19

    array-length v0, p1

    if-gt p2, v0, :cond_19

    if-ltz p3, :cond_19

    add-int v0, p2, p3

    if-ltz v0, :cond_19

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_4a

    .line 79
    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " b.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_4a
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->content:[B

    .line 82
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->b:[B

    .line 83
    iput p2, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->off:I

    .line 84
    iput p3, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->len:I

    .line 85
    if-eqz p4, :cond_5b

    .line 86
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 88
    :cond_5b
    return-void
.end method

.method public constructor <init>([BLcz/msebera/android/httpclient/entity/ContentType;)V
    .registers 4
    .param p1, "b"    # [B
    .param p2, "contentType"    # Lcz/msebera/android/httpclient/entity/ContentType;

    .prologue
    .line 59
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 60
    const-string/jumbo v0, "Source byte array"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->content:[B

    .line 62
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->b:[B

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->off:I

    .line 64
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->b:[B

    array-length v0, v0

    iput v0, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->len:I

    .line 65
    if-eqz p2, :cond_1e

    .line 66
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 68
    :cond_1e
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 5

    .prologue
    .line 107
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->b:[B

    iget v2, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->off:I

    iget v3, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 103
    iget v0, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->len:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const-string/jumbo v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->b:[B

    iget v1, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->off:I

    iget v2, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->len:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 113
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 114
    return-void
.end method
