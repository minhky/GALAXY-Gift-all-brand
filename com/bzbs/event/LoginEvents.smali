.class public Lcom/bzbs/event/LoginEvents;
.super Ljava/lang/Object;
.source "LoginEvents.java"


# static fields
.field private static a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/bzbs/event/LoginEvents$LoginListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bzbs/event/LoginEvents;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/bzbs/event/LoginEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 19
    return-void
.end method

.method public static a(Lcom/bzbs/event/LoginEvents$LoginListener;)V
    .registers 2

    .prologue
    .line 10
    sget-object v0, Lcom/bzbs/event/LoginEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 22
    sget-object v0, Lcom/bzbs/event/LoginEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/LoginEvents$LoginListener;

    .line 23
    invoke-interface {v0, p0}, Lcom/bzbs/event/LoginEvents$LoginListener;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 25
    :cond_16
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 28
    sget-object v0, Lcom/bzbs/event/LoginEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/LoginEvents$LoginListener;

    .line 29
    invoke-interface {v0, p0}, Lcom/bzbs/event/LoginEvents$LoginListener;->b(Ljava/lang/String;)V

    goto :goto_6

    .line 31
    :cond_16
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 34
    sget-object v0, Lcom/bzbs/event/LoginEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/LoginEvents$LoginListener;

    .line 35
    invoke-interface {v0, p0}, Lcom/bzbs/event/LoginEvents$LoginListener;->c(Ljava/lang/String;)V

    goto :goto_6

    .line 37
    :cond_16
    return-void
.end method
