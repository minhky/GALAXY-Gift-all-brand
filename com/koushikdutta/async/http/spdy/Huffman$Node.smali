.class final Lcom/koushikdutta/async/http/spdy/Huffman$Node;
.super Ljava/lang/Object;
.source "Huffman.java"


# instance fields
.field private final a:[Lcom/koushikdutta/async/http/spdy/Huffman$Node;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/koushikdutta/async/http/spdy/Huffman$Node;

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Huffman$Node;->a:[Lcom/koushikdutta/async/http/spdy/Huffman$Node;

    .line 208
    iput v1, p0, Lcom/koushikdutta/async/http/spdy/Huffman$Node;->b:I

    .line 209
    iput v1, p0, Lcom/koushikdutta/async/http/spdy/Huffman$Node;->c:I

    .line 210
    return-void
.end method

.method constructor <init>(II)V
    .registers 4

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Huffman$Node;->a:[Lcom/koushikdutta/async/http/spdy/Huffman$Node;

    .line 220
    iput p1, p0, Lcom/koushikdutta/async/http/spdy/Huffman$Node;->b:I

    .line 221
    and-int/lit8 v0, p2, 0x7

    .line 222
    if-nez v0, :cond_e

    const/16 v0, 0x8

    :cond_e
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/Huffman$Node;->c:I

    .line 223
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/spdy/Huffman$Node;)[Lcom/koushikdutta/async/http/spdy/Huffman$Node;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Huffman$Node;->a:[Lcom/koushikdutta/async/http/spdy/Huffman$Node;

    return-object v0
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/spdy/Huffman$Node;)I
    .registers 2

    .prologue
    .line 194
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/Huffman$Node;->b:I

    return v0
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/spdy/Huffman$Node;)I
    .registers 2

    .prologue
    .line 194
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/Huffman$Node;->c:I

    return v0
.end method
