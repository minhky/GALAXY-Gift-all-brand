.class public final Lcom/jakewharton/disklrucache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final p:Ljava/io/OutputStream;


# instance fields
.field final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:I

.field private h:J

.field private final i:I

.field private j:J

.field private k:Ljava/io/Writer;

.field private final l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jakewharton/disklrucache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:J

.field private final o:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    const-string/jumbo v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jakewharton/disklrucache/DiskLruCache;->a:Ljava/util/regex/Pattern;

    .line 713
    new-instance v0, Lcom/jakewharton/disklrucache/DiskLruCache$2;

    invoke-direct {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/jakewharton/disklrucache/DiskLruCache;->p:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 14

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-wide v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->j:J

    .line 150
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    .line 159
    iput-wide v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->n:J

    .line 162
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 164
    new-instance v0, Lcom/jakewharton/disklrucache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/disklrucache/DiskLruCache$1;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;)V

    iput-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->o:Ljava/util/concurrent/Callable;

    .line 181
    iput-object p1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->c:Ljava/io/File;

    .line 182
    iput p2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->g:I

    .line 183
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->d:Ljava/io/File;

    .line 184
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->e:Ljava/io/File;

    .line 185
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->f:Ljava/io/File;

    .line 186
    iput p3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->i:I

    .line 187
    iput-wide p4, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->h:J

    .line 188
    return-void
.end method

.method static synthetic a(Lcom/jakewharton/disklrucache/DiskLruCache;I)I
    .registers 2

    .prologue
    .line 88
    iput p1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->m:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 454
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->h()V

    .line 455
    invoke-direct {p0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->e(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    .line 457
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_23

    if-eqz v0, :cond_20

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->e(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)J
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_5f

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_23

    :cond_20
    move-object v0, v1

    .line 474
    :goto_21
    monitor-exit p0

    return-object v0

    .line 461
    :cond_23
    if-nez v0, :cond_62

    .line 462
    :try_start_25
    new-instance v0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/jakewharton/disklrucache/DiskLruCache$1;)V

    .line 463
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 468
    :goto_31
    new-instance v0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$1;)V

    .line 469
    invoke-static {v1, v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    .line 472
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DIRTY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_5e
    .catchall {:try_start_25 .. :try_end_5e} :catchall_5f

    goto :goto_21

    .line 454
    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 464
    :cond_62
    :try_start_62
    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_5f

    move-result-object v2

    if-eqz v2, :cond_6a

    move-object v0, v1

    .line 465
    goto :goto_21

    :cond_6a
    move-object v1, v0

    goto :goto_31
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;
    .registers 12

    .prologue
    .line 201
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_f

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_f
    if-gtz p2, :cond_1a

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1a
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 211
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 221
    :cond_39
    :goto_39
    new-instance v0, Lcom/jakewharton/disklrucache/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 222
    iget-object v1, v0, Lcom/jakewharton/disklrucache/DiskLruCache;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 224
    :try_start_4a
    invoke-direct {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->d()V

    .line 225
    invoke-direct {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->e()V

    .line 226
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/jakewharton/disklrucache/DiskLruCache;->d:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/jakewharton/disklrucache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_66} :catch_6c

    .line 244
    :goto_66
    return-object v0

    .line 216
    :cond_67
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_39

    .line 229
    :catch_6c
    move-exception v1

    .line 230
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->b()V

    .line 241
    :cond_9f
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 242
    new-instance v0, Lcom/jakewharton/disklrucache/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 243
    invoke-direct {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->f()V

    goto :goto_66
.end method

.method static synthetic a(Lcom/jakewharton/disklrucache/DiskLruCache;)Ljava/io/Writer;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    invoke-static {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)V
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 509
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    move-result-object v2

    .line 510
    invoke-static {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_15

    .line 511
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_12

    .line 509
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 515
    :cond_15
    if-eqz p2, :cond_59

    :try_start_17
    invoke-static {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->d(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_59

    move v1, v0

    .line 516
    :goto_1e
    iget v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->i:I

    if-ge v1, v3, :cond_59

    .line 517
    invoke-static {p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->b(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_47

    .line 518
    invoke-virtual {p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->b()V

    .line 519
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_47
    invoke-virtual {v2, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_56

    .line 522
    invoke-virtual {p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->b()V
    :try_end_54
    .catchall {:try_start_17 .. :try_end_54} :catchall_12

    .line 561
    :cond_54
    :goto_54
    monitor-exit p0

    return-void

    .line 516
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 528
    :cond_59
    :goto_59
    :try_start_59
    iget v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->i:I

    if-ge v0, v1, :cond_8e

    .line 529
    invoke-virtual {v2, v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b(I)Ljava/io/File;

    move-result-object v1

    .line 530
    if-eqz p2, :cond_8a

    .line 531
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 532
    invoke-virtual {v2, v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(I)Ljava/io/File;

    move-result-object v3

    .line 533
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 534
    invoke-static {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 535
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 536
    invoke-static {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 537
    iget-wide v8, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->j:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->j:J

    .line 528
    :cond_87
    :goto_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 540
    :cond_8a
    invoke-static {v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Ljava/io/File;)V

    goto :goto_87

    .line 544
    :cond_8e
    iget v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->m:I

    .line 545
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    .line 546
    invoke-static {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->d(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_f6

    .line 547
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Z)Z

    .line 548
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->c(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 549
    if-eqz p2, :cond_da

    .line 550
    iget-wide v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->n:J

    invoke-static {v2, v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;J)J

    .line 556
    :cond_da
    :goto_da
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 558
    iget-wide v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->j:J

    iget-wide v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->h:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_ed

    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->g()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 559
    :cond_ed
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_54

    .line 553
    :cond_f6
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->c(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "REMOVE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->c(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_122
    .catchall {:try_start_59 .. :try_end_122} :catchall_12

    goto :goto_da
.end method

.method static synthetic a(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)V
    .registers 3

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .registers 2

    .prologue
    .line 385
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_12

    .line 386
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 388
    :cond_12
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .registers 4

    .prologue
    .line 391
    if-eqz p2, :cond_5

    .line 392
    invoke-static {p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Ljava/io/File;)V

    .line 394
    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 395
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 397
    :cond_11
    return-void
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 665
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/jakewharton/disklrucache/Util;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/jakewharton/disklrucache/Util;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/jakewharton/disklrucache/DiskLruCache;)V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->i()V

    return-void
.end method

.method static synthetic c()Ljava/io/OutputStream;
    .registers 1

    .prologue
    .line 88
    sget-object v0, Lcom/jakewharton/disklrucache/DiskLruCache;->p:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic c(Lcom/jakewharton/disklrucache/DiskLruCache;)Z
    .registers 2

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->g()Z

    move-result v0

    return v0
.end method

.method private d()V
    .registers 9

    .prologue
    .line 248
    new-instance v1, Lcom/jakewharton/disklrucache/StrictLineReader;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->d:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/jakewharton/disklrucache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Lcom/jakewharton/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 250
    :try_start_e
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v5

    .line 255
    const-string/jumbo v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    iget v6, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    iget v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    const-string/jumbo v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 260
    :cond_55
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_97
    .catchall {:try_start_e .. :try_end_97} :catchall_97

    .line 275
    :catchall_97
    move-exception v0

    invoke-static {v1}, Lcom/jakewharton/disklrucache/Util;->a(Ljava/io/Closeable;)V

    throw v0

    .line 264
    :cond_9c
    const/4 v0, 0x0

    .line 267
    :goto_9d
    :try_start_9d
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->d(Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/io/EOFException; {:try_start_9d .. :try_end_a4} :catch_a7
    .catchall {:try_start_9d .. :try_end_a4} :catchall_97

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    .line 269
    :catch_a7
    move-exception v2

    .line 273
    :try_start_a8
    iget-object v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->m:I
    :try_end_b1
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_97

    .line 275
    invoke-static {v1}, Lcom/jakewharton/disklrucache/Util;->a(Ljava/io/Closeable;)V

    .line 277
    return-void
.end method

.method static synthetic d(Lcom/jakewharton/disklrucache/DiskLruCache;)V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->f()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/16 v1, 0x20

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 280
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 281
    if-ne v2, v5, :cond_24

    .line 282
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_24
    add-int/lit8 v0, v2, 0x1

    .line 286
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 288
    if-ne v3, v5, :cond_48

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    const-string/jumbo v1, "REMOVE"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_d8

    const-string/jumbo v1, "REMOVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 291
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_47
    :goto_47
    return-void

    .line 295
    :cond_48
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 298
    :goto_4d
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    .line 299
    if-nez v0, :cond_61

    .line 300
    new-instance v0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    invoke-direct {v0, p0, v1, v6}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/jakewharton/disklrucache/DiskLruCache$1;)V

    .line 301
    iget-object v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_61
    if-eq v3, v5, :cond_8d

    const-string/jumbo v1, "CLEAN"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_8d

    const-string/jumbo v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 305
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 306
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Z)Z

    .line 307
    invoke-static {v0, v6}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    .line 308
    invoke-static {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_47

    .line 309
    :cond_8d
    if-ne v3, v5, :cond_aa

    const-string/jumbo v1, "DIRTY"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_aa

    const-string/jumbo v1, "DIRTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 310
    new-instance v1, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v6}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$1;)V

    invoke-static {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    goto :goto_47

    .line 311
    :cond_aa
    if-ne v3, v5, :cond_be

    const-string/jumbo v0, "READ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_be

    const-string/jumbo v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 314
    :cond_be
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d8
    move-object v1, v0

    goto/16 :goto_4d
.end method

.method static synthetic e(Lcom/jakewharton/disklrucache/DiskLruCache;)I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->i:I

    return v0
.end method

.method private e()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Ljava/io/File;)V

    .line 324
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 325
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    .line 326
    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    if-nez v1, :cond_35

    move v1, v2

    .line 327
    :goto_23
    iget v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->i:I

    if-ge v1, v4, :cond_10

    .line 328
    iget-wide v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->j:J

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->j:J

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 331
    :cond_35
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move v1, v2

    .line 332
    :goto_3a
    iget v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->i:I

    if-ge v1, v4, :cond_4f

    .line 333
    invoke-virtual {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Ljava/io/File;)V

    .line 334
    invoke-virtual {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Ljava/io/File;)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 336
    :cond_4f
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 339
    :cond_53
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 658
    sget-object v0, Lcom/jakewharton/disklrucache/DiskLruCache;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 660
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_2d
    return-void
.end method

.method static synthetic f(Lcom/jakewharton/disklrucache/DiskLruCache;)Ljava/io/File;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->c:Ljava/io/File;

    return-object v0
.end method

.method private declared-synchronized f()V
    .registers 6

    .prologue
    .line 346
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;

    if-eqz v0, :cond_a

    .line 347
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 350
    :cond_a
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->e:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/jakewharton/disklrucache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_9c

    .line 353
    :try_start_1d
    const-string/jumbo v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 354
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 355
    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 356
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    iget v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    iget v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    .line 364
    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_9f

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->c(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_1d .. :try_end_96} :catchall_97

    goto :goto_63

    .line 371
    :catchall_97
    move-exception v0

    :try_start_98
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_9c

    .line 346
    :catchall_9c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 367
    :cond_9f
    :try_start_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->c(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_9f .. :try_end_c8} :catchall_97

    goto :goto_63

    .line 371
    :cond_c9
    :try_start_c9
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 374
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 375
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->f:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 377
    :cond_dc
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->e:Ljava/io/File;

    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->d:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 378
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 380
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->d:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/jakewharton/disklrucache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;
    :try_end_ff
    .catchall {:try_start_c9 .. :try_end_ff} :catchall_9c

    .line 382
    monitor-exit p0

    return-void
.end method

.method private g()Z
    .registers 3

    .prologue
    .line 568
    .line 569
    iget v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->m:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->m:I

    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private h()V
    .registers 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;

    if-nez v0, :cond_d

    .line 614
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_d
    return-void
.end method

.method private i()V
    .registers 5

    .prologue
    .line 641
    :goto_0
    iget-wide v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->j:J

    iget-wide v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    .line 642
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 643
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 645
    :cond_22
    return-void
.end method


# virtual methods
.method public declared-synchronized a()J
    .registers 3

    .prologue
    .line 487
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->h:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 405
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->h()V

    .line 406
    invoke-direct {p0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->e(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_87

    .line 408
    if-nez v0, :cond_15

    .line 442
    :cond_13
    :goto_13
    monitor-exit p0

    return-object v1

    .line 412
    :cond_15
    :try_start_15
    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->d(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 419
    iget v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->i:I

    new-array v6, v3, [Ljava/io/InputStream;
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_87

    move v3, v2

    .line 421
    :goto_20
    :try_start_20
    iget v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->i:I

    if-ge v3, v4, :cond_44

    .line 422
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v6, v3
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_2f} :catch_32
    .catchall {:try_start_20 .. :try_end_2f} :catchall_87

    .line 421
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 424
    :catch_32
    move-exception v0

    move v0, v2

    .line 426
    :goto_34
    :try_start_34
    iget v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->i:I

    if-ge v0, v2, :cond_13

    .line 427
    aget-object v2, v6, v0

    if-eqz v2, :cond_13

    .line 428
    aget-object v2, v6, v0

    invoke-static {v2}, Lcom/jakewharton/disklrucache/Util;->a(Ljava/io/Closeable;)V

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 436
    :cond_44
    iget v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->m:I

    .line 437
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 438
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->g()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 439
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 442
    :cond_76
    new-instance v1, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->e(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/jakewharton/disklrucache/DiskLruCache$1;)V
    :try_end_86
    .catchall {:try_start_34 .. :try_end_86} :catchall_87

    goto :goto_13

    .line 405
    :catchall_87
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .registers 4

    .prologue
    .line 450
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Ljava/lang/String;J)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->close()V

    .line 654
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/jakewharton/disklrucache/Util;->a(Ljava/io/File;)V

    .line 655
    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 580
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->h()V

    .line 581
    invoke-direct {p0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->e(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    .line 583
    if-eqz v0, :cond_18

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_5e

    move-result-object v2

    if-eqz v2, :cond_30

    :cond_18
    move v0, v1

    .line 604
    :goto_19
    monitor-exit p0

    return v0

    .line 592
    :cond_1b
    :try_start_1b
    iget-wide v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->j:J

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->j:J

    .line 593
    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 587
    add-int/lit8 v1, v1, 0x1

    :cond_30
    iget v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->i:I

    if-ge v1, v2, :cond_61

    .line 588
    invoke-virtual {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(I)Ljava/io/File;

    move-result-object v2

    .line 589
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 590
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5e
    .catchall {:try_start_1b .. :try_end_5e} :catchall_5e

    .line 580
    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 596
    :cond_61
    :try_start_61
    iget v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->m:I

    .line 597
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "REMOVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 598
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->g()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 601
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_98
    .catchall {:try_start_61 .. :try_end_98} :catchall_5e

    .line 604
    :cond_98
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public declared-synchronized close()V
    .registers 4

    .prologue
    .line 627
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    if-nez v0, :cond_7

    .line 638
    :goto_5
    monitor-exit p0

    return-void

    .line 630
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    .line 631
    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 632
    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->b()V
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_30

    goto :goto_16

    .line 627
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    .line 635
    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->i()V

    .line 636
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->k:Ljava/io/Writer;
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_30

    goto :goto_5
.end method
