.class public interface abstract Lokhttp3/Dns;
.super Ljava/lang/Object;
.source "Dns.java"


# static fields
.field public static final a:Lokhttp3/Dns;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lokhttp3/Dns$1;

    invoke-direct {v0}, Lokhttp3/Dns$1;-><init>()V

    sput-object v0, Lokhttp3/Dns;->a:Lokhttp3/Dns;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method
