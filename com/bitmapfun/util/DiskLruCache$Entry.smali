.class final Lcom/bitmapfun/util/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitmapfun/util/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lcom/bitmapfun/util/DiskLruCache$Editor;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/bitmapfun/util/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/bitmapfun/util/DiskLruCache;Ljava/lang/String;)V
    .registers 4
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    iput-object p2, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 913
    # getter for: Lcom/bitmapfun/util/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/bitmapfun/util/DiskLruCache;->access$2100(Lcom/bitmapfun/util/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->lengths:[J

    .line 914
    return-void
.end method

.method synthetic constructor <init>(Lcom/bitmapfun/util/DiskLruCache;Ljava/lang/String;Lcom/bitmapfun/util/DiskLruCache$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/bitmapfun/util/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/bitmapfun/util/DiskLruCache$1;

    .prologue
    .line 896
    invoke-direct {p0, p1, p2}, Lcom/bitmapfun/util/DiskLruCache$Entry;-><init>(Lcom/bitmapfun/util/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/bitmapfun/util/DiskLruCache$Entry;)[J
    .registers 2
    .param p0, "x0"    # Lcom/bitmapfun/util/DiskLruCache$Entry;

    .prologue
    .line 896
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1100(Lcom/bitmapfun/util/DiskLruCache$Entry;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bitmapfun/util/DiskLruCache$Entry;

    .prologue
    .line 896
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/bitmapfun/util/DiskLruCache$Entry;)J
    .registers 3
    .param p0, "x0"    # Lcom/bitmapfun/util/DiskLruCache$Entry;

    .prologue
    .line 896
    iget-wide v0, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/bitmapfun/util/DiskLruCache$Entry;J)J
    .registers 4
    .param p0, "x0"    # Lcom/bitmapfun/util/DiskLruCache$Entry;
    .param p1, "x1"    # J

    .prologue
    .line 896
    iput-wide p1, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/bitmapfun/util/DiskLruCache$Entry;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bitmapfun/util/DiskLruCache$Entry;

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$602(Lcom/bitmapfun/util/DiskLruCache$Entry;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/bitmapfun/util/DiskLruCache$Entry;
    .param p1, "x1"    # Z

    .prologue
    .line 896
    iput-boolean p1, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/bitmapfun/util/DiskLruCache$Entry;)Lcom/bitmapfun/util/DiskLruCache$Editor;
    .registers 2
    .param p0, "x0"    # Lcom/bitmapfun/util/DiskLruCache$Entry;

    .prologue
    .line 896
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->currentEditor:Lcom/bitmapfun/util/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/bitmapfun/util/DiskLruCache$Entry;Lcom/bitmapfun/util/DiskLruCache$Editor;)Lcom/bitmapfun/util/DiskLruCache$Editor;
    .registers 2
    .param p0, "x0"    # Lcom/bitmapfun/util/DiskLruCache$Entry;
    .param p1, "x1"    # Lcom/bitmapfun/util/DiskLruCache$Editor;

    .prologue
    .line 896
    iput-object p1, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->currentEditor:Lcom/bitmapfun/util/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/bitmapfun/util/DiskLruCache$Entry;[Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/bitmapfun/util/DiskLruCache$Entry;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 942
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .registers 8
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 928
    array-length v2, p1

    iget-object v3, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    # getter for: Lcom/bitmapfun/util/DiskLruCache;->valueCount:I
    invoke-static {v3}, Lcom/bitmapfun/util/DiskLruCache;->access$2100(Lcom/bitmapfun/util/DiskLruCache;)I

    move-result v3

    if-eq v2, v3, :cond_e

    .line 929
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 933
    :cond_e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    :try_start_f
    array-length v2, p1

    if-ge v1, v2, :cond_25

    .line 934
    iget-object v2, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->lengths:[J

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1c} :catch_1f

    .line 933
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 936
    :catch_1f
    move-exception v0

    .line 937
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 939
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_25
    return-void
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .registers 6
    .param p1, "i"    # I

    .prologue
    .line 946
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    # getter for: Lcom/bitmapfun/util/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/bitmapfun/util/DiskLruCache;->access$2200(Lcom/bitmapfun/util/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .registers 6
    .param p1, "i"    # I

    .prologue
    .line 950
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    # getter for: Lcom/bitmapfun/util/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/bitmapfun/util/DiskLruCache;->access$2200(Lcom/bitmapfun/util/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/bitmapfun/util/DiskLruCache$Entry;->lengths:[J

    array-length v5, v4

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v5, :cond_19

    aget-wide v2, v4, v1

    .line 919
    .local v2, "size":J
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 918
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 921
    .end local v2    # "size":J
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
