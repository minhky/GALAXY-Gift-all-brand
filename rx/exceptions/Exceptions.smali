.class public final Lrx/exceptions/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# static fields
.field private static final MAX_DEPTH:I = 0x19


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static addCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 105
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 107
    .local v2, "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    .line 108
    .local v0, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 109
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v3, 0x19

    if-lt v0, v3, :cond_14

    move v0, v1

    .line 128
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_13
    return-void

    .line 113
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move v0, v1

    .line 122
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_23
    :try_start_23
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_13

    .line 123
    :catch_27
    move-exception v3

    goto :goto_13

    .line 117
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_29
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_6
.end method

.method public static getFinalCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 141
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v2, 0x19

    if-lt v0, v2, :cond_17

    .line 143
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "Stack too deep to get final cause"

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 147
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_16
    return-object p0

    .line 145
    .end local v0    # "i":I
    .restart local v1    # "i":I
    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method public static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_7

    .line 48
    check-cast p0, Ljava/lang/RuntimeException;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 49
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_7
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_e

    .line 50
    check-cast p0, Ljava/lang/Error;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 52
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static throwIfAny(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "exceptions":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Throwable;>;"
    if-eqz p0, :cond_33

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 159
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    .line 160
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 163
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1d

    .line 164
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 165
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_1d
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_24

    .line 166
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 168
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_24
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 171
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2a
    new-instance v1, Lrx/exceptions/CompositeException;

    const-string/jumbo v2, "Multiple exceptions"

    invoke-direct {v1, v2, p0}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    throw v1

    .line 174
    :cond_33
    return-void
.end method

.method public static throwIfFatal(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    instance-of v0, p0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v0, :cond_7

    .line 77
    check-cast p0, Lrx/exceptions/OnErrorNotImplementedException;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 78
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_7
    instance-of v0, p0, Lrx/exceptions/OnErrorFailedException;

    if-eqz v0, :cond_e

    .line 79
    check-cast p0, Lrx/exceptions/OnErrorFailedException;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 82
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_e
    instance-of v0, p0, Ljava/lang/StackOverflowError;

    if-eqz v0, :cond_15

    .line 83
    check-cast p0, Ljava/lang/StackOverflowError;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 84
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_15
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-eqz v0, :cond_1c

    .line 85
    check-cast p0, Ljava/lang/VirtualMachineError;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 86
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1c
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-eqz v0, :cond_23

    .line 87
    check-cast p0, Ljava/lang/ThreadDeath;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 88
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_23
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-eqz v0, :cond_2a

    .line 89
    check-cast p0, Ljava/lang/LinkageError;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 91
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_2a
    return-void
.end method

.method public static throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lrx/Observer",
            "<*>;)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 197
    .local p1, "o":Lrx/Observer;, "Lrx/Observer<*>;"
    invoke-static {p0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 198
    invoke-interface {p1, p0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 199
    return-void
.end method

.method public static throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V
    .registers 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lrx/Observer",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 186
    .local p1, "o":Lrx/Observer;, "Lrx/Observer<*>;"
    invoke-static {p0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 187
    invoke-static {p0, p2}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 188
    return-void
.end method
